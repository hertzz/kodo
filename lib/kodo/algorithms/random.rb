module Kodo
  module Algorithms
    class Random < Kodo::Algorithms::Base
      DEFAULT_LENGTH = 16

      def create
        if @max_length.nil?
          @max_length = DEFAULT_LENGTH
        end

        for i in 1..@count do
          rnd_array = []

          for l in 1..@max_length do
            rnd_array << ('0'..'z').to_a.shuffle.first(1).join
          end

          puts rnd_array.join
        end
      end
    end
  end
end
