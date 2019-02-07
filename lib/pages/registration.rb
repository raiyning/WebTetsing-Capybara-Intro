require 'capybara/dsl'

class Registration
  include Capybara::DSL

  #page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME = 'firstName'
  AGE_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_XPATH = '/html/body/div/form/div[4]/div/input'
  MALE_TICK = '/html/body/div/form/div[5]/label'
  FEMALE_TICK = '/html/body/div/form/div[6]/label'
  DEGREE_FIELD_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_FIELD_ID = 'inputUni'
  ADDRESS_FIELD_ID = 'inputAddress'
  ADDRESS_TWO_FIELD_ID = 'inputAddress2'

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

  def click_female
    find(:xpath, FEMALE_TICK).click
  end

  def click_male
    find(:xpath, MALE_TICK).click
  end

  def fill_in_university(uni)
    select(uni, :from => UNIVERSITY_FIELD_ID)
  end

  def fill_in_degree(degree)
    find(:xpath, DEGREE_FIELD_XPATH).set("#{degree}")
  end



end