feature 'delete bookmark' do
    scenario 'succesfully deletes bookmark from the list of bookmarks' do
      visit ('/bookmarks')
      first('.bookmark').click_button("Delete")
      expect(page).to_not have_content "Ask Jeeves"
      expect(page).to_not have_content "error"
    end
  end