require_relative 'hello'

describe hello do
	it "say hello" do
		hello.should == "Hello"
	end
end

describe "the greet function" do
	it "say hello to someone" do
		greet("xautjzd").should == "Hello, xautjzd"
	end

	it "say hello to someone else" do
		expect(greet("jzd")).to eq("Hello, jzd")
	end

	it "identity test" do
		a=1
		expect(a).to be < 2
	end
end
