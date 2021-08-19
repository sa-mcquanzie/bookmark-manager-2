require 'pg'

def create_test_table
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("SET client_min_messages = error;")
  connection.exec("CREATE TABLE IF NOT EXISTS bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));")
  connection.close
end

def clear_db
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("DELETE FROM bookmarks;")
  connection.close
end

def add_test_bookmarks
  Bookmark.create('Ask Jeeves', 'http://www.askjeeves.com/')
  Bookmark.create('Twitter', 'http://www.twitter.com/')
  Bookmark.create('Google', 'http://www.google.com/')
end