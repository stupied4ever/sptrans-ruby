module SPTrans
  class Autenticador
    def initialize token
    end

    def autenticar conexao
      raise Excecoes::TokenInvalido
    end
  end
end
