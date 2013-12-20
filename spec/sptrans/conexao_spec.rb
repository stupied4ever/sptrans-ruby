require 'spec_helper'

module SPTrans
  describe Conexao do
    subject(:conexao) { Conexao.new conexao_faraday }

    let(:conexao_faraday) { double }
    let(:autenticador)    { double }

    it 'encapsula uma conexão do Faraday' do
      expect(conexao_faraday).to receive(:get)
      conexao.get
    end

    it 'sabe se está autorizado' do
      expect(conexao).not_to be_autorizado
      allow(autenticador).to receive(:autenticar).and_return do
        conexao.autorizado = true
      end
      autenticador.autenticar(conexao)
      expect(conexao).to be_autorizado
    end
  end
end
