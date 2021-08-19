feature 'add bookmark' do
  scenario 'checks a new bookmark is able to be added' do
    visit ('/')
    fill_in('title', with: 'Hamster Dance')
    fill_in('url', with: 'http://www.hamsterdance.com/')
    click_button("Add")
    expect(page).to have_content "Hamster Dance"
    expect(page).to_not have_content "error"
  end
end