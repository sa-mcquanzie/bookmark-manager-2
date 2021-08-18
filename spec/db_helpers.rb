require 'pg'

def clear_db
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("DELETE FROM bookmarks;")
  connection.close
end

def add_test_bookmarks
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec(
    "INSERT INTO bookmarks (url)
    VALUES ('http://www.askjeeves.com/'),
    ('http://www.twitter.com/'),
    ('http://www.google.com/');
    "
  )
  connection.close
end