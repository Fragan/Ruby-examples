require_relative "simple_number"
require "test/unit"
 
# http://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple
    assert_equal(4, SimpleNumber.new(2).add(2) )
    assert_equal(6, SimpleNumber.new(2).multiply(3) )
  end
 
end