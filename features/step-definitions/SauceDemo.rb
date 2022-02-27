timestamp = Time.now.strftime("%d%m%Y%H%M%S")

Given('User is on login homepage') do
  @wait.until { @driver.find_element(:class, 'login_logo') }
end

When('User fill username') do
  @driver.find_element(:id, 'user-name').send_keys("standard_user")
end

And('User fill password') do
  @driver.find_element(:id, 'password').send_keys("secret_sauce")
end

And('User click login button') do
  @driver.find_element(:id, 'login-button').click()
end

Then('User is on sauce demo homepage') do
  @wait.until { @driver.find_element(:xpath, "//span[@class='title'][contains(text(),'Products')]") }
end

When('User add product to cart') do
  @driver.find_element(:xpath, "//button[contains(text(),'Add to cart')]").click()
end

And('User click cart button') do
  @driver.find_element(:xpath, "//div[@id='shopping_cart_container']/a[contains(@class,'shopping_cart_link')]").click()
end

And('User click check out button') do
  @driver.find_element(:id, 'checkout').click()
end

Then('User is on check out page') do
  @wait.until { @driver.find_element(:xpath, "//span[@class='title'][contains(text(),'Checkout: Your Information')]") }
end

When('User fill check out info') do
  @driver.find_element(:id, 'first-name').send_keys("Test")
  @driver.find_element(:id, 'last-name').send_keys("Automation" + timestamp)
  @driver.find_element(:id, 'postal-code').send_keys(timestamp)
end

And('User click continue button') do
  @driver.find_element(:id, 'continue').click()
end

And('User overview and finish order') do
  @driver.find_element(:id, 'finish').click()
end

Then('User is on thank you order page') do
  @wait.until { @driver.find_element(:xpath, "//h2[contains(text(),'THANK YOU FOR YOUR ORDER')]") }
end