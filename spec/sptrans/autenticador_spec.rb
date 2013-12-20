require 'spec_helper'

module SPTrans
  describe Autenticador do
    subject(:autenticador) { Autenticador.new token }

    let(:token) { double }

    describe '#autenticar' do
      subject(:autenticar) { autenticador.autenticar! conexao }

      let(:conexao) { Conexao.new conexao_faraday }
      let(:conexao_faraday) { double(post: double(body: 'true')) }

      it 'modifica o status da conexão para autorizada' do
        expect { autenticar }.to change { conexao.autorizado? }.to(true)
      end

      context 'token inválido' do
        let(:conexao_faraday) { double(post: double(body: 'false')) }

        it 'lança exceção TokenInvalido' do
          expect { autenticar }.to raise_error(Excecoes::TokenInvalido)
        end
      end
    end
  end
end
