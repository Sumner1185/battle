require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:Player_1]
    session[:player_2] = params[:Player_2]
    # session[:attack] = false
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @starting_HP = '60HP'
    erb(:play)
  end

  get '/attack' do
    # session[:attack] = true
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:attack)
  end

  # start the server if ruby file executed directly 
  run! if app_file == $0

end
