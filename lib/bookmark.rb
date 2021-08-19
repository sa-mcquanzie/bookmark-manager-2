require 'pg'

class Bookmark
  def initialize(title, url)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec_params("INSERT INTO bookmarks (title, url) VALUES ($1, $2);", [title, url])
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
    result.map { |bookmark| [bookmark['id'], bookmark['title'], bookmark['url']] }
  end
  def self.delete(id:)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec_params("DELETE FROM bookmarks WHERE id = $1", [id])
    connection.close
  end
end

