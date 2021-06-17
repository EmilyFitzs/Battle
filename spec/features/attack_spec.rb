feature 'Attacking' do
  scenario 'attack player 2' do
   sign_in_and_play
   click_button 'Attack'
   expect(page).to have_content "Luke attacked Ziggy"
  end

  scenario 'attack player 2 and reduce its HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ziggy: 40HP"
   end
end