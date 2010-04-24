module Perchance
  class ObjectMethodCalled < Exception; end

  class Nothing
    instance_methods.each do |imethod|
      define_method(imethod) do
        msg = "Nothing##{imethod} was invoked, which is likely not what you wanted as it was inherited from Object"
        unless Perchance.config[:warn_object_methods]# TODO option to log warning
          raise ObjectMethodCalled.new(msg)
        else
          Perchance::Util.logger.warn(msg)
          super
        end
      end
    end
    
    def method_missing(method, *args)
      Perchance::Util.logger.warn("method Perchance::Nothing##{method}' called")
      return self
    end
  end
end
