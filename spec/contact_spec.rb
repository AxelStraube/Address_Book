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

  describe('#phone') do
    it('gets and sets a phone object') do
      person = Person.new({:first_name => 'Alfred', :last_name => 'Johnson'})
      person.phone = Phone.new({:phone_number => 555_666_7777, :number_type => 'home'})
      expect(person.phone.phone_number).to(eq(555_666_7777))
    end
  end

  describe('#email') do
    it('sets and gets an email object') do
      person = Person.new({:first_name => 'Alfred', :last_name => 'Johnson'})
      person.email = Email.new({:email_address => "al@gmail.com", :email_type => 'personal'})
      expect(person.email.email_address).to(eq('al@gmail.com'))
    end
  end
end

describe(Phone) do
  describe('#phone_number') do
    it('sets and gets a phone number') do
      number = Phone.new(:phone_number => 123_456_7890, :number_type => 'cell')
      expect(number.phone_number).to(eq(1234567890))
      expect(number.number_type).to(eq('cell'))
    end
  end
end

describe(Email) do
  describe('#email_address') do
    it("sets and gets someone's e-mail") do
      my_email = Email.new({:email_address => "email@gmail.com", :email_type => 'personal'})
      expect(my_email.email_address).to(eq("email@gmail.com"))
      expect(my_email.email_type).to(eq('personal'))
    end
  end

end

describe(MailingAddress) do
  describe('#address') do
    it('sets and gets the address') do
      place = MailingAddress.new({:address_line => '123 road st',
                                 :city          => 'Townington',
                                 :state         => 'OfMind',
                                 :zip           => 12345,
                                 :address_type  => 'home'})
    expect(place.address).to(eq('123 road st, Townington, OfMind, 12345'))
    end
  end
end


















#
