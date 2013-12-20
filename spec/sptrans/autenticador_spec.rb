require 'spec_helper'

module SPTrans
  describe Autenticador do
    subject(:autenticador) { Autenticador.new token }

    let(:token) { double }

    describe '#autenticar' do
      subject(:autenticar) { autenticador.autenticar conexao }

      context 'um token invalido' do
        let(:conexao) { double(post: double(body: 'false')) }

        it 'lança exceção TokenInvalido' do
          expect { autenticar }.to raise_error(Excecoes::TokenInvalido)
        end
      end
    end
  end
end
