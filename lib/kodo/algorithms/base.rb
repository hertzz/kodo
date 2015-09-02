module Kodo
  module Algorithms
    class Base
      attr_accessor :name, :seed, :count, :max_length

      DEFAULT_SEED_LIBRARY = SecureRandom

      def initialize(count, max_length)
        self.count = count
        self.max_length = max_length
      end

    end
  end
end
