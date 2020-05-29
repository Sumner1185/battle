feature 'start game' do
  
  scenario 'view hit points' do
    sign_in_and_play
    expect(page).to have_content "Al: 60HP", "Nikita: 60HP"
  end

end