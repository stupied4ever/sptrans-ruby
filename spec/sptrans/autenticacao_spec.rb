require 'spec_helper'
require 'securerandom'

module SPTrans
  describe Autenticacao do
    subject(:autenticacao) { Autenticacao.new token }

    context 'um token invalido' do
      let(:token) { SecureRandom.hex }

      it 'raise error' do
        expect { autenticacao }.to raise_error(Excecoes::TokenInvalido)
      end
    end
  end
end
