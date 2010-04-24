require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'perchance'

Perchance::Util.logger=nil
Perchance.config[:warn_object_methods] = true

class Test::Unit::TestCase
end
