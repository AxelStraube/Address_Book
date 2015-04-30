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
  describe('#cell_number') do
    it('sets and gets a cell phone number') do
      number = Phone.new({:cell_number => 123_456_7890})
      expect(number.cell_number).to(eq(1234567890))
    end
  end

  describe('#home_number') do
    it('sets and gets a home phone number') do
      number = Phone.new({:home_number => 555_666_7777})
      expect(number.home_number).to(eq(5556667777))
    end
  end
end

describe(Email) do
  describe('#personal_email') do
    it("sets and gets someone's personal e-mail") do
      email = Email.new({:personal_email => "exampleemail@gmail.com"})
      expect(email.personal_email).to(eq("exampleemail@gmail.com"))
    end
  end

  describe('#work_email') do
    it('sets and gets a persons work e-mail') do
      email = Email.new({:work_email => "work@work.com"})
      expect(email.work_email).to(eq("work@work.com"))
    end
  end

end





















#
