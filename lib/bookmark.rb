require 'pg'

class Bookmark
  def initialize(title, url)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks(title, url) VALUES ('#{title}', '#{url}');")
    connection.close
  end

  def self.create(title, url)
    @bookmark = Bookmark.new(title, url)
  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| [bookmark['title'], bookmark['url']] }
  end
end

