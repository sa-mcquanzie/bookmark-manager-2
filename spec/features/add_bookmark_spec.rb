feature 'add bookmark' do
  scenario 'checks a new bookmark is able to be added' do
    visit ('/')
    fill_in('New', with: 'http://www.hamsterdance.com/')
    click_button("Submit")
    expect(page).to have_content "http://www.hamsterdance.com/"
    expect(page).to_not have_content "error"
  end
end