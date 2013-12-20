# Sptrans

O objetivo dessa gem é facilitar o acesso à [API Olho Vivo][api-olho-vivo]

## Installation

Add this line to your application's Gemfile:

    gem 'sptrans'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sptrans


## Uso

```ruby
sp_trans = SPTrans.new token
linhas = sp_trans.linhas termos_busca
# => [<SPTrans::Linha @...>, <SPTrans::Linha @...>]
```

Customizar a criação da conexão usando o Faraday:

```ruby
SPTrans.new token do |faraday|
  faraday.adapter :curb
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[api-olho-vivo]: http://www.sptrans.com.br/desenvolvedores/APIOlhoVivo.aspx

