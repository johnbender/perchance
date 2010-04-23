PROJECT_ROOT = File.dirname(File.expand_path(__FILE__))

require 'logger'

%w( util nothing nil_class object ).each do |r|
  require File.join( PROJECT_ROOT, 'perchance', r)
end
