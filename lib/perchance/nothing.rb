module Perchance
  class Nothing
    def method_missing(method, *args)
      Perchance::Util.logger.warn("method '#{method}' called on instance of Perchance::Nothing")
      return self
    end
  end
end
