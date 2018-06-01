# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play screen' do
  scenario 'the screen allows the player to choose a weapon' do
    visit ('/')
    fill_in('Name', with: 'John')
    click_button('Start')
    expect(page).to have_content("Choose your weapon:")
  end
  scenario 'the screen allows the player to choose a weapon' do
    visit ('/')
    fill_in('Name', with: 'John')
    click_button('Start')
    click_button('Rock')
  end
end
