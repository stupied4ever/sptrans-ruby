require 'delegate'

module SPTrans
  class Conexao < SimpleDelegator
    attr_writer :autenticada

    def autenticada?
      !! @autenticada
    end
  end
end
