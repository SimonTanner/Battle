require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    redirect('/play')
  end

  get '/play' do
    @game = $game
    @game.whos_turn
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    $game = @game
    erb :attack
  end

  run! if app_file == $0

end
