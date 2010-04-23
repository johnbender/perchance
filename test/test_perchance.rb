require 'helper'

class TestPerchance < Test::Unit::TestCase
  should "return nothing down a long chain of maybe's other methods" do
    assert_equal bounce(nil).maybe.this.should.still.return.nothing.class, Perchance::Nothing
  end

  should "return something when there is something to return down a maybe chain" do
    assert_equal bounce(1).maybe.maybe.maybe, 1
  end

  def bounce(value)
    value
  end
end
