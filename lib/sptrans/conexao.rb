require 'delegate'

module SPTrans
  class Conexao < SimpleDelegator
    attr_writer :autorizado

    def autorizado?
      !! @autorizado
    end
  end
end
