describe "Testing the Random Generator class" do

  before(:all) do
    @generator_data = Generator.new
  end

  it "should return a string as the name" do
    expect(@generator_data.name).to be_kind_of String
  end

  it "should have name starting with a capital letter" do
    expect(@generator_data.capitalize_name).to be true
  end

  it "should return a string as the gender" do
    expect(@generator_data.get_gender).to be_kind_of String
  end

  it "should return a string as the postcode" do
    expect(@generator_data.get_random_postcode).to be_kind_of String
  end

  it "should return a string as the address" do
    expect(@generator_data.get_address).to be_kind_of String
  end

  it "should return a string as the zip code" do
    expect(@generator_data.get_zip_code).to be_kind_of String
  end

  it "should have the length of zip code between 5 and 10 " do
    expect(@generator_data.get_zip_code.length).to be_between(5,10).inclusive
  end

  it "should return a string as the job title" do
    expect(@generator_data.get_job_title).to be_kind_of String
  end

  it "should return a string as the nationality" do
    expect(@generator_data.get_user_nationality).to be_kind_of String
  end

  it "should return an integer as the age" do
    expect(@generator_data.get_user_age).to be_kind_of Integer
  end

  it "should return an integer as the phone number" do
    expect(@generator_data.get_user_phone_number.to_i).to be_kind_of Integer
  end

  it "should have the length of phone number as 11 " do
    expect(@generator_data.name).to be_kind_of String
  end

  it "should return a string as the job title" do
    expect(@generator_data.get_job_title).to be_kind_of String
  end

  it "should return a string as the university name" do
    expect(@generator_data.get_university_name).to be_kind_of String
  end

  it "should return a string as the user programming language name" do
    expect(@generator_data.get_user_programming_language).to be_kind_of String
  end

  it "should return a string as the company name" do
    expect(@generator_data.get_company_name).to be_kind_of String
  end

  it "should return a string as the company industry" do
    expect(@generator_data.get_company_industry).to be_kind_of String
  end

  it "should return a string as the user's marital status" do
    expect(@generator_data.get_marital_status).to be_kind_of String
  end

end
