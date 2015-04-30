require('./lib/contact')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/*.rb')
# require('pry')

get('/') do
  erb(:index)
end

post('/address_book') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  birthday = params.fetch('birthday')
  phone = params.fetch('phone')
  email = params.fetch('email')
  @person = Person.new({:first_name => first_name, :last_name => last_name})
  @name = @person.first_name
  # @person.save()
  erb(:address_book)
end

get('/address_book') do
  erb(:address_book)
end
