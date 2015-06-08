require'rspec'
require'selenium-webdriver'
require_relative '../pageObjects/home_page'

describe 'Testing Contact Form' do

  app = nil

  before(:each) do
    app =AbstractPage.new(Selenium::WebDriver.for(:firefox))
  end

  after(:each) do
    app.quit
  end

  it 'should to enter valid date and submit it' do


    contactConfirmation = app
        .navigateToAppRoot
        .navigateToContact
          .fillInName('Name Test')
          .fillInAddress("Address Test")
          .fillInPostcode('Postcode Test')
          .fillInEmail('Email Test')
          .submitForm

    expect(contactConfirmation.getPageTitle).to be == 'Contact Confirmation'
  end
end