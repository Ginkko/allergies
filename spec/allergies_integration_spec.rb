require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_expectations,false)

describe('The path to the allergies page', {:type => :feature}) do
  it('Presents a form to input a number with a submit button to take the user to a page displaying thier allergies.') do
    visit('/')
    fill_in('allergy_score', :with => '129')
    click_button('submit')
    expect(page).to(have_content('You are allergic to: eggs and cats.'))
  end
end
