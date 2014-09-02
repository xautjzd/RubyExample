require 'sqlite3'
require 'sequel'
require 'thread'

# Create database
db_name = "hash_data.db"
SQLite3::Database.new(db_name) unless File.exists?(db_name)

DB = Sequel.sqlite(db_name)

# Create table
# Reference: http://sequel.jeremyevans.net/rdoc/files/doc/schema_modification_rdoc.html

unless DB.table_exists?(:hash_mine_ipos)
	DB.create_table :hash_mine_ipos do
		primary_key :id
		Integer :currency_market_id
		Integer :inviation_code_num
		Integer :limit_amount
		Integer :state
		Decimal :price, :size => [16,8]
		Decimal :sell_amount, :size => [16,8]
		Decimal :circulation, :size => [16,8]
		Decimal :purchasing_power, :size => [16,8]
	end
end

$semaphore = Mutex.new

# mine_ipo = DB[:hash_mine_ipos].first

def add_sell_amount(mine_ipo, num)
	DB.transaction do
		DB.transaction savepoint: true do
			Thread.new do
				$semaphore.synchronize do
					mine_ipo.sell_amount + num
				end
			end
			raise Sequel::Rollback
		end
	end
end
