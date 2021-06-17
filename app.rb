require 'sinatra/base'
require 'sinatra/reloader'
require './player'
require './game'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
     erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  post '/names' do
    $game = Game.new
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $game.attack($player_2)
    @player_2_hp = $player_2.hp
    erb :attack
  end
  
 # start the server if ruby file executed directly
 run! if app_file == $0
end
