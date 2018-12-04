require 'faker'
require 'httparty'
require 'json'

class Generator
  include HTTParty

  base_uri 'api.postcodes.io'

  def get_random_postcode
    JSON.parse(self.class.get("/random/postcodes/").body)['result']['postcode']
  end

  def name
    Faker::Name.unique.name
  end

  def get_gender
    Faker::Gender.unique.binary_type
  end

  def get_address
    Faker::Address.unique.street_address
  end

  def get_zip_code
    Faker::Address.unique.zip_code
  end

  def get_job_title
    Faker::Job.unique.title
  end

  def get_user_nationality
    Faker::Nation.unique.nationality
  end

  def get_user_birthday
    Faker::Date.birthday
  end

  def get_user_age
    Date.today.year - get_user_birthday.year
  end

  def get_user_phone_number
    Faker::Config.locale = 'en-GB'
    Faker::PhoneNumber.cell_phone
  end

  def get_university_name
    Faker::University.name
  end

  def get_user_programming_language
    Faker::ProgrammingLanguage.name
  end

  def get_company_name
    Faker::Company.name
  end

  def get_company_industry
    Faker::Company.industry
  end

  def get_marital_status
    Faker::Demographic.marital_status
  end

end

testing = Generator.new
puts testing.get_marital_status
puts testing.get_random_postcode
puts testing.get_user_phone_number
