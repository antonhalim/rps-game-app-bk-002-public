require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    @play = RPSGame.new(params["play"].to_sym)
    erb :rps_game
  end
end
