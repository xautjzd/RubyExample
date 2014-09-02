require 'spec_helper'

describe Book do
	
	before :each do
		@book = Book.new("Title", "Author", :category)
	end

	describe "#new" do
		it "return a new book object" do
			@book.should be_an_instance_of Book
		end

		it "takes three arguments and return an book object" do
			book = Book.new("Title", "Author")
			book.should_not be_an_instance_of Book
		end
	end
end
