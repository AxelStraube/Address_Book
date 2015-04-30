class Contact
  attr_accessor :first_name, :last_name

  define_method(:initialize) do |first_name, last_name|
    @first_name = first_name
    @last_name = last_name
  end
end
