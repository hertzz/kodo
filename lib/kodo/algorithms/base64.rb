module Kodo
  module Algorithms
    class Base64 < Kodo::Algorithms::Base
      def create
        for i in 1..@count do
          puts SecureRandom.urlsafe_base64(nil, true)
        end
      end
    end
  end
end
