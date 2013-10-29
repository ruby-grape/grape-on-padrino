require Padrino.root('app/app.rb')

Padrino.mount('Acme::App', app_file: Padrino.root('app/app.rb')).to('/')
