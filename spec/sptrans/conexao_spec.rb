require 'spec_helper'

module SPTrans
  describe Conexao do
    subject(:conexao) { Conexao.new conexao_faraday }

    let(:conexao_faraday) { double }

    it 'encapsula uma conexão do Faraday' do
      expect(conexao_faraday).to receive(:get)
      conexao.get
    end

    it 'sabe se está autenticada' do
      expect(conexao).to respond_to :autenticada?
    end
  end
end
