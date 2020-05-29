def sign_in_and_play
  visit('/')
  fill_in('Player_1', with: "Al")
  fill_in('Player_2', with: "Nikita")
  click_button('Submit')
end