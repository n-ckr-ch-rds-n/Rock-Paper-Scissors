require 'sinatra/base'
require_relative './lib/weapon.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/outcome' do
    @name = session[:name]
    @weapon = params[:weapon]
    @compweap = Weapon.new.pick
    @outcome = Game.new.outcome(@weapon, @compweap, @name)
    erb(:outcome)
  end

  run! if app_file == $0
end
