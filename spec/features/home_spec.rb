feature 'home page' do
  scenario 'the name of the game is on the home page' do
    visit ('/')
    expect(page).to have_content("Rock, Paper, Scissors")
  end
  scenario 'there is a name entry form' do
    visit ('/')
    fill_in('Name', with: 'John')
    click_button('Start')
    expect(page).to have_content("Welcome, John!")
  end
  scenario 'the name entry form records the player name' do
    visit ('/')
    fill_in('Name', with: 'Maud')
    click_button('Start')
    expect(page).to have_content("Welcome, Maud!")
  end
end
