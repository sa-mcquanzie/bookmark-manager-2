feature 'bookmarks page' do
  scenario 'checks the page has content' do
    visit "/bookmarks"
    expect(page).to have_content "http://www.github.com/"
    expect(page).to have_content "http://www.makers.tech/"
  end
end
