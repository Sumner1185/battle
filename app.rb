require 'sinatra/base'

class Battle < Sinatra::Base

  # set :root, File.battle(__FILE__)

  # enable :sessions

  get '/' do
    "Testing infrastructure working!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
