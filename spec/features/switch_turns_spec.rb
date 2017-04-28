require_relative './web_helpers'

feature 'Testing switch turns' do
  scenario 'Player_2\'s turn to attack' do
    sign_in_and_play
    click_button('Attack')
    click_button('Next Round')
    expect(page).to have_content("Blue's turn to attack")
  end

end
