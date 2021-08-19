feature 'bookmarks page' do
  scenario 'checks the page have content' do
    create_test_table
    clear_db
    add_test_bookmarks

    visit "/bookmarks"
    expect(page).to have_content "Ask Jeeves"
    expect(page).to have_content "Twitter"
    expect(page).to have_content "Google"
  end
end
