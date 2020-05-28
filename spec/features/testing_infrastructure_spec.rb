xfeature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

# describe 'homepage', type: :feature do

#   it 'shows message "Testing infrastructure working!"' do
#     visit '/'
#     message = "Testing infrastructure working!"
#     expect(page).to have_content(message)
#   end
# end
