class Test
  class << self
    attr_accessor :count
  end

  def add
    self.class.count += 1
    puts self.class.count
  end
end
puts Test.count
Test.count = 5
puts Test.count
test = Test.new
test.add

