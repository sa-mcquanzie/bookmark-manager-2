require './lib/bookmark.rb'

describe Bookmark do
  it 'shows all the bookmarks' do
    bookmarks = Bookmark.all
  expect(bookmarks).to include("http://www.github.com/")
  expect(bookmarks).to include("http://www.makers.tech/")
  end
end