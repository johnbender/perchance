require 'helper'

class TestObject < Test::Unit::TestCase
  should "return something when there is something to return down a maybe chain" do
    assert_equal 1.maybe.maybe.maybe, 1
  end
end
