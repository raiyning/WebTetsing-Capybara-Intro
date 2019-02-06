require 'capybara/dsl'

class Registration
  include Capybara::DSL

  #page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME = 'firstName'

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


end