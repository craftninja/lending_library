require 'spec_helper'
require 'capybara/rspec'

feature 'Homepage' do

  scenario 'User can register' do
    visit '/'
    click_on 'Sign up'
    fill_in 'Email', with: 'chris@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome to the lending library chris@example.com'
  end

end
