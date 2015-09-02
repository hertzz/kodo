module Kodo
  class KodoException < StandardError
  end

  class ParameterNotFound < KodoException; end
  class AlgorithmNotFound < KodoException; end
  class InvalidArgumentCombination < KodoException; end
end
