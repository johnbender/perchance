require 'helper'

class TestNilClass < Test::Unit::TestCase
  should "return nothing down a long chain of maybe's other methods" do
    assert_equal nil.maybe.this.should.still.return.nothing.class, Perchance::Nothing
  end
end
