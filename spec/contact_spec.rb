require('rspec')
require('contact')

describe(Contact) do
    describe('#initialize') do
      it('initializes a new Contact') do
        expect(Contact.new('Axel').nil?).to(eq(false))
      end
    end

    describe('#name') do
      it('sets and gets name') do
        person = Contact.new('Cory')
        person.name = "John"
        expect(person.name).to(eq('John'))
      end
    end
end
