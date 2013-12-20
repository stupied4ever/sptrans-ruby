module SPTrans
  class Autenticador
    def initialize token
      @token = token
    end

    def autenticar conexao
      response = conexao.post "/v0/Login/Autenticar?token=#{ @token }"
      conexao.autorizado = response.body == 'true'

      raise Excecoes::TokenInvalido unless conexao.autorizado?
    end
  end
end
