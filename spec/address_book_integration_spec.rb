require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the root path', {:type => :feature}) do
  it('visits index') do
    visit('/')
    expect(page).to(have_content("Address Book"))
  end
end
