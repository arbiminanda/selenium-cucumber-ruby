projectPath = File.dirname(__dir__)

Before do |scenario|
  Selenium::WebDriver::Chrome.driver_path = projectPath+"/resources/drivers/chromedriver.exe"
  @driver = Selenium::WebDriver.for :chrome
  @wait = Selenium::WebDriver::Wait.new(:timeout => 10000)
  @driver.manage.window.maximize
  @driver.get("https://www.saucedemo.com/")
end

After do |scenario|
  @driver.quit
end