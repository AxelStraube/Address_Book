require('rspec')
require('contact')

describe(Contact) do
    describe('#initialize') do
      it('Initialize a new Contact') do
        expect(Contact.new('Axel').nil?).to(eq(false))
      end
    end
end
