# selenium-cucumber-ruby

This repository provides some script for building automated test suites for UI-based testing with RubyMine, Cucumber, Gherkin, and Chrome driver as a browser. The object for this automated test is the SauceDemo web application

# Setting up and running tests

* Install Ruby on your computer
	* You can download Ruby from [this url](https://www.ruby-lang.org/id/downloads/)
* Install RubyMine on your computer
	* You can download RubyMine from [this url](https://www.jetbrains.com/ruby/download/)
* Clone this repository to your RubyMineprojects directory workspace
* Open directory project command line and run the following command to install selenium and cucumber, you can also install from RubyMine terminal after opening this project
```
gem install selenium-webdriver
gem install cucumber
```
* In this repository, the chrome driver for Google Chrome version 97 is already available. 
	* In case your Google Chrome version is different, you can download chrome driver from [this url](https://chromedriver.chromium.org/downloads) according to your version. Place chrome driver in the following folder of directory
```
{YourProjectPath}/features/resources/drivers
```
* In this repository, there is a feature files:
	* OrderSauceDemo.feature, contains test scenario to order product in SauceDemo
* You can run all scenarios in a feature file at once or run each scenario individually by opening the feature file

# Recorded results from running automated tests

* [Scenario : Order Journey Sauce Demo](https://drive.google.com/file/d/1OaTF9TtpytPngYZU2EAipJcV7HrUXht4/view?usp=sharing)