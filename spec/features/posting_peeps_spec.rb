require 'capybara/rspec'
require './app/models/peep.rb'

feature 'Posting peeps' do
  scenario 'I want to be able to write and post a message to the chitter page' do
    visit '/'
    click_button 'Log in!'
    log_in
    fill_in 'new_peep', with: 'I love chocolate'
    click_button 'Post!'
    expect(page).to have_content 'I love chocolate'
  end
end
feature 'Seeing time' do
  scenario 'I want to be able to write and post a message to the chitter page' do
    visit '/'
    click_button 'Log in!'
    log_in
    fill_in 'new_peep', with: 'I love chocolate'
    click_button 'Post!'
    expect(page).to have_content Time.new - 0.01
  end
end
