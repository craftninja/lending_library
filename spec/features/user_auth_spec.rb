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

  scenario 'User can logout' do
    email_address = 'chris@example.com'
    welcome_message = "Welcome to the lending library #{email_address}"
    visit '/'
    click_on 'Sign up'
    fill_in 'Email', with: email_address
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'
    expect(page).to have_content(welcome_message)
    click_on 'Log out'
    expect(page).to_not have_content(welcome_message)

  end

end
