require('rspec')
require('contact')

describe(Person) do
  describe('#initialize') do
    it('initializes a new person') do
      expect(Person.new({:first_name => 'Axel', :last_name => 'Straube'}).nil?).to(eq(false))
    end
  end

  describe('#first_name') do
    it('sets and gets first name') do
      person = Person.new({:first_name => 'Cory', :last_name =>'Spitzer'})
      person.first_name = "John"
      expect(person.first_name).to(eq('John'))
    end
  end

  describe('#last_name') do
    it('sets and gets last name') do
      person = Person.new({:first_name => 'John', :last_name => 'Smith'})
      person.last_name = 'Johnson'
      expect(person.last_name).to(eq('Johnson'))
    end
  end

  describe('#birthday') do
    it ('sets and gets a birthday') do
      person = Person.new({:first_name => 'Alfred', :last_name => 'Johnson'})
      person.birthday = Time.new(1955, 04, 30)
      expect(person.birthday.to_s).to(eq("1955-04-30 00:00:00 -0700"))
    end
  end
end

describe(Phone) do
  describe('#phone_number') do
    it('sets and gets a phone number') do
      number = Phone.new({:cell_number => 123_456_7890})
      expect(number.phone_number).to(eq(1234567890))
    end
  end
end
