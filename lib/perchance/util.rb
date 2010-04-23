module Perchance
  class Util
    class << self
      def logger
        @@logger ||= Logger.new(STDOUT)
      end

      def logger=(out)
        @@logger = Logger.new(out)
      end
    end
  end
end
