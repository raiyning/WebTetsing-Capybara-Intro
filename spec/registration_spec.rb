require 'spec_helper'

describe 'testing a correct path for sparta registration' do 

  context 'it should respond with confirmation on successful completion' do

    it 'should show correct confirmation on completion ' do 

      @sparta_demo_site = SpartaDemoSite.new
      @sparta_demo_site.registration_page.visit_registration_page
      @sparta_demo_site.registration_page.fill_first_name('dashhing')
      @sparta_demo_site.registration_page.fill_last_name('jhonny')
      @sparta_demo_site.registration_page.fill_in_age('7')
      @sparta_demo_site.registration_page.fill_in_date('06/02/2019')
      @sparta_demo_site.registration_page.click_female
      @sparta_demo_site.registration_page.click_male
      @sparta_demo_site.registration_page.fill_in_university('University of uni')
      @sparta_demo_site.registration_page.fill_in_degree('degree of education')


      sleep 5
    end

  end

end