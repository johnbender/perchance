require 'helper'

class TestNothing < Test::Unit::TestCase
  context "when raising exceptions on object methods" do
    setup do
      Perchance.config[:warn_object_methods] = false
    end

    teardown do
      Perchance.config[:warn_object_methods] = true
    end

    should "raise an error if attempting to call object methods on nothing" do
      Object.instance_methods.each do |imethod|
        assert_raise(Perchance::ObjectMethodCalled){ nil.maybe.send(imethod) }
      end
    end
  end

  context "when warning about methods invoked on Nothing" do
    should "log warning when methods are called on Nothing instance" do
      mock_logger = mock('logger')
      mock_logger.expects(:warn).with { |string| string =~ /foo/ }
      Perchance::Util.expects(:logger).returns(mock_logger)
      Perchance::Nothing.new.foo
    end
  end

  should "return true when asked if nil" do
    assert Perchance::Nothing.new.foo.bar.baz.nil? 
    foo = mock('foo')
    foo.expects(:bar).returns(nil)
    assert foo.bar.maybe.bing.baz.maybe.nil?
  end
end
