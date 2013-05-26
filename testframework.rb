#!/usr/bin/env ruby

#ruby's testing framework
require "test/unit"
class TestMe<Test::Unit::TestCase
    def test_add
        s = 1 +1
        assert_equal(3,s)
    end
end
