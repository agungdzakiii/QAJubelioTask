When('I am going to Inventory page') do
    visit("https://app.jubelio.com/home/inventory")
    expect(find("[placeholder='Nama, SKU, Merek Lain']"))
    sleep 5
  end
  
  When('I fill {string} in field Persediaan') do |keyword|
    expect(find("[placeholder='Nama, SKU, Merek Lain']").set(keyword))
    find(:xpath, "//span[@class='glyphicon glyphicon-search']").click
  end
  
  When('I click on checkbox') do
    find(:xpath, "//label[@for='checkbox0']").click
  end
  
  When('I click Penyesuaian Persediaan') do
    find_button('Penyesuaian Persediaan').click
    expect(page).to(have_content('Qty Akhir'))
  end
  
  When('I click on +-') do
    element = find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
    element.double_click
end
  
  When('I update inventory quantity to {string}') do |quantity|
    element = find(:xpath, "//*[@id='page-top']/div[6]/div/input")
    element.set(quantity)
    find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[5]/div/div/span/div").click
    sleep 3
end
  
  When('I click Simpan') do
    find_button('Simpan').click
  end
  
  Then('I should see successfull notification') do
    expect(page).to(have_content('Data berhasil disimpan.'))
    sleep 5
  end