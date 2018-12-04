require 'faker'

class Generator

  attr_accessor :first_name

  def initialize
    @first_name = Faker::Name.unique.name
  end

  def gender
    Faker::Gender.unique.binary_type
  end

  def address
    Faker::Address.unique.street_address
  end

  def zip_code
    Faker::Address.unique.zip_code
  end

  def job
    Faker::Job.title
  end

  def nationality

  end

  def age

  end




end

my_name = Generator.new
puts my_name.first_name
puts my_name.gender
puts my_name.address
