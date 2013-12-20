module SPTrans
  module Excecoes
    class TokenInvalido < StandardError
      def initialize
        super 'Token inválido, crie seu token em ' \
              'http://www.sptrans.com.br/desenvolvedores/APIOlhoVivo/' \
              'Documentacao.aspx'
      end
    end
  end
end
