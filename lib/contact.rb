class Contact
  attr_accessor :first_name

  define_method(:initialize) do |first_name|
    @first_name = first_name
  end
end
