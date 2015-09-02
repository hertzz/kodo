module Kodo
  class Generator
    attr_reader :algorithm, :count, :max_length

    DEFAULT_ALGORITHM = "md5"

    def initialize(options=nil)
      self.algorithm = options.algorithm
      self.count = options.count
      self.max_length = options.max_length
    end

    def max_length=(size=nil)
      if !size.nil?
        if @algorithm != Kodo::Algorithms::Random
          raise Kodo::InvalidArgumentCombination, "Max length cannot be used for the #{@algorithm.name} algorithm"
        end

        if size.to_i >= 1 && size.to_i <= 512
          @max_length = size.to_i
        else
          raise Exception, 'Max length must be greater than 1 and less than 512'
        end
      end
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
      algorithm = @algorithm.new(@count, @max_length)
      algorithm.create
    end

  end
end
