require 'sinatra/base'
require_relative './lib/weapon.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    $name = params[:Name]
    erb(:play)
  end

  post '/outcome' do
    @weapon = params[:weapon]
    @compweap = Weapon.new.pick
    erb(:outcome)
  end

  run! if app_file == $0
end
