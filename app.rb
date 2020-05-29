require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    #session[:player_1] = params[:Player_1]
    #session[:player_2] = params[:Player_2]
    # session[:attack] = false
    $player_1_global = Player.new(params[:Player_1])
    $player_2_global = Player.new(params[:Player_2])
    p $player_1_global.name
    redirect '/play'
  end

  get '/play' do
    p $player_1_global.name
    @player_1 = $player_1_global.name
    @player_2 = $player_2_global.name
    #@starting_HP = '60HP'
    erb(:play)
  end

  get '/attack' do
    # session[:attack] = true
    @player_1 = $player_1_global.name
    @player_2 = $player_2_global.name
    erb(:attack)
  end

  # start the server if ruby file executed directly 
  run! if app_file == $0

end
