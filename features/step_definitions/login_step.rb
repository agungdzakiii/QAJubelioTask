Given('I am on the homepage') do
    visit("https://app.jubelio.com/login")
  end
  
  When('I fill my credential') do
    fill_in 'email', with: 'qa.rakamin.jubelio@gmail.com'
    fill_in 'password', with: 'Jubelio123!'
  end
  
  When('I click Masuk') do
    find("button[type='Submit']").click
  end
  
  Then('I should be logged in') do
    expect(page).to have_content('Dashboard')
    find(:xpath, '//*[@class="metismenu nav"]', visible: true) 
    find(:xpath, '//*[@class="user-name dropdown"]') 
    sleep 5
  end