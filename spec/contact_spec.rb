require('rspec')
require('contact')

describe(Contact) do
    describe('#initialize') do
      it('initializes a new Contact') do
        expect(Contact.new('Axel').nil?).to(eq(false))
      end
    end

    describe('#first_name') do
      it('sets and gets first name') do
        person = Contact.new('Cory', 'Spitzer')
        person.first_name = "John"
        expect(person.first_name).to(eq('John'))
      end
    end

    describe('#last_name') do
      it('sets and gets last name') do
        person = Contact.new('John', 'Smith')
        person.last_name = 'Johnson'
        expect(person.last_name).to(eq('Johnson'))
      end
    end
end
