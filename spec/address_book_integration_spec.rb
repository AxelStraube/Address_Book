require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the app paths', {:type => :feature}) do
  describe('the root path') do
    it('visits index') do
      visit('/')
      expect(page).to(have_content("Address Book"))
    end
  end

  describe('the address book path') do
    it('clicks on address book button and visits address book') do
      visit('/address_book')
      expect(page).to(have_content('This is the address book!'))
    end
  end

end
