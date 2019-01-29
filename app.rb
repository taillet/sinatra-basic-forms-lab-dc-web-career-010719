require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params["name"].to_s
    @breed = params["breed"].to_s
    @age = params["age"].to_s
    Puppy.new(@name,@breed,@age)
    erb :display_puppy
  end
end
