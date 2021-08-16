require 'sinatra'
require 'sinatra/reloader' if development?

class Bookmark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end 

  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $0

end