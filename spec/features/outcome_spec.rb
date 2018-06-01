feature 'the outcome screen shows the winner' do
  scenario 'player picks rock and outcome screen shows player rock' do
    visit ('/')
    fill_in('Name', with: 'John')
    click_button('Start')
    click_button('Rock')
    expect(page).to have_content 'John: Rock'
  end
  scenario 'player picks paper and outcome screen shows player has picked paper' do
    visit ('/')
    fill_in('Name', with: 'Maud')
    click_button('Start')
    click_button('Paper')
    expect(page).to have_content 'Maud: Paper'
  end
  scenario 'outcome screen shows the computer choice' do
    visit ('/')
    fill_in('Name', with: 'Maud')
    click_button('Start')
    click_button('Paper')
    expect(page).to have_content 'Computer:'
  end
end
