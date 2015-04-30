require('rspec')
require('contact')

describe(Contact) do
    describe('#initialize') do
      it('initializes a new Contact') do
        expect(Contact.new('Axel').nil?).to(eq(false))
      end
    end

    describe('#first_name') do
      it('sets and gets name') do
        person = Contact.new('Cory')
        person.first_name = "John"
        expect(person.first_name).to(eq('John'))
      end
    end
end
