require 'rspec'
require 'selenium-webdriver'

describe 'My webdriver testcases' do
  before(:each) do
    #create webdriver driver
    @driver = Selenium::WebDriver.for(:firefox)
    #navigate to some website
    @driver.navigate.to 'https://thetestroom.com'
  end

  it 'should first testcase' do

    #click on some link
       @driver.find_element(:link,"December 2014").click
    #print out page title
       puts @driver.title
  end
  after(:each) do
    #finally close the browser
    @driver.quit
  end
end
