require_relative '../pageObjects/abstract_page'
require_relative '../pageObjects/contact_confirmatio_page'

class ContactPage < AbstractPage

  def initialize(driver)
    super(driver)
  end

  def fillInName(name)
    @@driver.find_element(:name,'name_field').send_keys name
    return ContactPage.new(@@driver)
  end

  def fillInAddress(address)
    @@driver.find_element(:name,'address_field').send_keys address
    return ContactPage.new(@@driver)
  end

  def fillInPostcode(postcode)
    @@driver.find_element(:name,'postcode_field').send_keys postcode
    return ContactPage.new(@@driver)
  end

  def fillInEmail(email)
    @@driver.find_element(:name,'email_field').send_keys email
    return ContactPage.new(@@driver)
  end

  def submitForm
    @@driver.find_element(:id,'submit_message').click
    return ContactConfirmatioPage.new(@@driver)
  end
end