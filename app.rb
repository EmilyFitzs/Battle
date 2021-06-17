require 'sinatra/base'
require 'sinatra/reloader'
require './player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
     erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $player_2.reduce_hp(10)
    @player_2_hp = $player_2.hp
    erb :attack
  end
  
 # start the server if ruby file executed directly
 run! if app_file == $0
end
