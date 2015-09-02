module Kodo
  module Algorithms
    class Random < Kodo::Algorithms::Base
      DEFAULT_LENGTH = 16

      def create
        if @max_length.nil?
          @max_length = DEFAULT_LENGTH
        end

        for i in 1..@count do
          puts ('0'..'z').to_a.shuffle.first(@max_length).join
        end
      end
    end
  end
end
