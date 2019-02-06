require 'capybara/dsl'

class Registration
  include Capybara::DSL

  #page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME = 'firstName'
  AGE_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_XPATH = '/html/body/div/form/div[4]/div/input'

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_first_name(name)
    fill_in(FIRST_NAME,:with => name)
  end

  def fill_last_name(name)
    fill_in(FIRST_NAME,:with => name)
  end

  def fill_in_age(age)
    find(:xpath, AGE_XPATH).set("#{age}")
  end

  def fill_in_date(date)
    find(:xpath, DATE_XPATH).set("#{date}")
  end

end