feature 'start game' do
  
  scenario 'view hit points' do
    visit('/')
    fill_in('Player_1', with: "Al")
    fill_in('Player_2', with: "Nikita")
    click_button('Submit')
    expect(page).to have_content "Al: 60HP", "Nikita: 60HP"
  end

end