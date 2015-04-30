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
  attr_accessor :personal_email, :work_email

  define_method(:initialize) do |attributes|
    if attributes.has_key?(:personal_email)
      @personal_email = attributes.fetch(:personal_email)
    else
      @personal_email = nil
    end
    if attributes.has_key?(:work_email)
      @work_email = attributes.fetch(:work_email)
    else
      @work_email = nil
    end
  end

end


























#
