module SPTrans
  module Excecoes
    class TokenInvalido < StandardError
      def initialize
        super 'Token inválido'
      end
    end
  end
end
