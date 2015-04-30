class Person
  attr_accessor :first_name, :last_name, :birthday, :phone, :email, :mailing_address

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    if attributes.has_key?(:birthday)
      @birthday = attributes.fetch(:birthday)
    else
      @birthday = nil
    end
  end
end

class Phone
  attr_accessor :phone_number, :number_type

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
    @number_type = attributes.fetch(:number_type)
  end
end

class Email
  attr_accessor :email_address, :email_type

  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @email_type = attributes.fetch(:email_type)
  end
end

class MailingAddress
  attr_accessor :address, :address_line, :city, :state, :zip, :address_type

  define_method(:initialize) do |attributes|
    @address_line = attributes.fetch(:address_line)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @address_type = attributes.fetch(:address_type)
    @address = [@address_line, @city, @state, @zip].join(", ")
  end
end


























#
