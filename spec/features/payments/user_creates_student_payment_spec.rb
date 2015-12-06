require 'spec_helper'

feature 'User creates student payment' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Abacki' }
  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
    click_on 'Add new one'
  end

  scenario 'with valid input' do
    select '2015', from: 'payment_created_at_1i'
    select 'December', from: 'payment_created_at_2i'
    select '6', from: 'payment_created_at_3i'
    select 'Jan Abacki', from: 'Student'
    click_button 'Create Payment'
    expect(page).to have_content 'Payment has been created!'
  end

  scenario 'with missing student' do
    click_button 'Create Payment'
    expect(page).to have_content "can't be blank"
  end

end
