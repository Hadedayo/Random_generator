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
    Faker::Name.name
  end

  def capitalize_name
    name.start_with? /[A-Z]/
  end

  def get_gender
    Faker::Gender.binary_type
  end

  def get_address
    Faker::Address.street_address
  end

  def get_zip_code
    Faker::Address.zip_code
  end

  def get_job_title
    Faker::Job.title
  end

  def get_user_nationality
    Faker::Nation.unique.nationality
  end

  def get_user_age
    Date.today.year - Faker::Date.birthday.year
  end

  def get_user_phone_number
    Faker::Config.locale = 'en-GB'
    Faker::PhoneNumber.cell_phone.gsub(' ','')
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
