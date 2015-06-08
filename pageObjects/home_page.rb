require_relative '../pageObjects/abstract_page'
require_relative '../pageObjects/contact_page'

class HomePage < AbstractPage

  def initialize(driver)
    super(driver)
  end

  def navigateToContact
    @@driver.find_element(:id,'contact_link').click
    return ContactPage.new(@@driver)
  end
end