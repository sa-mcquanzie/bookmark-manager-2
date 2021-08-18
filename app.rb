require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end 

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmarks/new' do
    Bookmark.create(params[:New])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end