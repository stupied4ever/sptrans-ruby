module SPTrans
  class Autenticador
    def initialize token
      @token = token
    end

    def autenticar! conexao
      response = conexao.post 'Login/Autenticar', { token: @token }
      conexao.autenticada = response.body == 'true'

      raise Excecoes::TokenInvalido unless conexao.autenticada?
    end
  end
end
