module Kodo
  module Algorithms
    class Uuid < Kodo::Algorithms::Base
      def create
        for i in 1..@count do
          puts SecureRandom.uuid()
        end
      end
    end
  end
end
