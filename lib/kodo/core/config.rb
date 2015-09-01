module Kodo
  class <<self
    attr_reader :generator

    def generator=(type=nil)
      if type.nil?
        raise GeneratorNotFound, "Generator was nil"
      else
        begin
          if Object.const_defined?("Kodo::Generators::#{type.upcase}")
            @generator = Object.const_get("Kodo::Generators::#{type.upcase}")
          else
            raise GeneratorNotFound, "\"#{type}\" is not a valid generator."
          end
        rescue Exception => e
          raise e, "Failed to reference generator \"#{type.upcase}\" - #{e.message}"
        end
      end
    end
  end
end
