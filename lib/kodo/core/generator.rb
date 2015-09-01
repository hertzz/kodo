module Kodo
  class Generator
    attr_reader :algorithm, :count

    DEFAULT_ALGORITHM = "md5"

    def initialize(options=nil)
      self.algorithm = options.algorithm
      self.count = options.count
    end

    def algorithm=(type=nil)
      if type.nil?
        self.algorithm = DEFAULT_ALGORITHM
      else
        begin
          if !Object.const_defined?("Kodo::Algorithms::#{type.capitalize}")
            raise Kodo::AlgorithmNotFound, "\"#{type}\" is not a valid algorithm."
          end

          algorithm = Object.const_get("Kodo::Algorithms::#{type.capitalize}")
        rescue Exception => e
          raise e, "Failed to reference algorithm \"#{type.capitalize}\" - #{e.message}"
        end

        @algorithm = algorithm
      end
    end

    def count=(number=1)
      if number.nil?
        number = 1
      end

      @count = number.to_i
    end

    def run
      algorithm = @algorithm.new(@count)
      algorithm.create
    end

  end
end
