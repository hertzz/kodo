module Kodo
  class <<self
    class KodoException < StandardError
    end

    class ParameterNotFound < KodoException; end
    class GeneratorNotFound < KodoException; end
  end
end
