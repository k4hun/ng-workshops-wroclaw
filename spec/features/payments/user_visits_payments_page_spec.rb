require 'spec_helper'

feature 'User visits payments page'  do
  let!(:student_1) { create :student, first_name: 'Jan' }
  let!(:student_2) { create :student, first_name: 'Adam' }
  let!(:payment_1) { create :payment, created_at: '2000-10-10'.to_datetime, student: student_1 }
  let!(:payment_2) { create :payment, created_at: '2010-08-02'.to_datetime, student: student_2 }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
  end

  scenario 'should see payments list' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Payments'
    end

    expect(page).to have_content 'Jan'
    expect(page).to have_content 'Adam'
    expect(page).to have_content '2000-10-10'
    expect(page).to have_content '2010-08-02'
  end

  scenario 'only when sign in' do
    logout
    visit payments_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
