module Kodo
  module Algorithms
    class Sha1 < Kodo::Algorithms::Base
      def create
        for i in 1..@count do
          seed = DEFAULT_SEED_LIBRARY.base64
          puts Digest::SHA1.hexdigest(seed)
        end
      end
    end
  end
end
