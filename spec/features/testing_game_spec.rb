feature 'start game' do
  
  scenario 'players enter names and can see them on screen' do
    visit('/')
    fill_in('Player_1', with: "Al")
    fill_in('Player_2', with: "Nikita")
    click_button('Submit')
    expect(page).to have_content "Al", "Nikita"
  end

end

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end