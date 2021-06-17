def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: "Luke"
    fill_in :player_2_name, with: "Ziggy"
    click_button 'Submit'
  end