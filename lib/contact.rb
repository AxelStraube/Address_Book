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
