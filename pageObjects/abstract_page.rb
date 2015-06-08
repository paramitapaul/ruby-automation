require 'Rspec'
require 'selenium-webdriver'
require_relative '../pageObjects/home_page'

class AbstractPage
  @@driver = nil

  def initialize(driver)
    @@driver = driver
  end

  def navigateToAppRoot
    @@driver.navigate.to("http://thetestroom.com/webapp/")
    return HomePage.new(@@driver)
    9
  end

  def quit
    @@driver.quit
  end

  def getPageTitle
    return @@driver.title
  end

end