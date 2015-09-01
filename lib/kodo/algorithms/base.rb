module Kodo
  module Algorithms
    class Base
      attr_accessor :name, :seed, :count

      DEFAULT_SEED_LIBRARY = SecureRandom

      def initialize(count)
        self.count = count
      end

    end
  end
end
