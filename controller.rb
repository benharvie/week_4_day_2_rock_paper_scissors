require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/game'
also_reload './models/*'

get '/welcome' do
  erb :welcome
end

get '/:player1/:player2' do
  game1 = Game.new()
  @game_result = game1.play(params[:player1], params[:player2])
  erb :game
end
