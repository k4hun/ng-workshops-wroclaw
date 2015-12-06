require 'spec_helper'

feature 'User checks student payments' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak' }
  let!(:payment) { create :payment, created_at: '2000-10-10'.to_datetime, student: student }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
    find(:xpath, "//a[@title='show payments']").click
  end

  scenario 'should see student payments' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Students » Jan Nowak payments'
    end

    expect(page).to have_content '2000-10-10'
  end
end
