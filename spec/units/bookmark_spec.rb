require './lib/bookmark.rb'

describe Bookmark do
  before do
    create_test_table
    clear_db
    add_test_bookmarks
  end

  it 'returns all the bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include ["Ask Jeeves", "http://www.askjeeves.com/"]
    expect(bookmarks).to include ["Twitter", "http://www.twitter.com/"]
    expect(bookmarks).to include ["Google", "http://www.google.com/"]
  end
end