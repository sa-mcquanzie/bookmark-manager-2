feature 'view_bookmarks' do 
  scenario 'should check the page works' do 
    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
