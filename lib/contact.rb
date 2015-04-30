class Person
  attr_accessor :first_name, :last_name, :birthday

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
  attr_accessor :cell_number, :home_number

  define_method(:initialize) do |attributes|
    if attributes.has_key?(:cell_number)
      @cell_number = attributes.fetch(:cell_number)
    else
      @cell_number = nil
    end
    if attributes.has_key?(:home_number)
      @home_number = attributes.fetch(:home_number)
    else
      @home_number = nil
    end
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
