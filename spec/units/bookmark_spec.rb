require './lib/bookmark.rb'

describe Bookmark do
  it 'shows all the bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include "http://www.askjeeves.com"
    expect(bookmarks).to include "http://www.twitter.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end