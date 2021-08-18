feature 'bookmarks page' do
  scenario 'checks the page have content' do
    create_test_table
    clear_db
    add_test_bookmarks

    visit "/bookmarks"
    expect(page).to have_content "http://www.askjeeves.com/"
    expect(page).to have_content "http://www.twitter.com/"
    expect(page).to have_content "http://www.google.com/"
  end
end
