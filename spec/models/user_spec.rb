require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:f_name).with_message("First name can't be blank.") }
    it { should validate_presence_of(:l_name).with_message("Last name can't be blank.") }
    it { should validate_presence_of(:email).with_message("Email can't be blank.") }
    it { should validate_presence_of(:phone).with_message("Phone can't be blank.") }
    it { should validate_presence_of(:street).with_message("Street can't be blank.") }
    it { should validate_presence_of(:city).with_message("City can't be blank.") }
    it { should validate_presence_of(:state).with_message("State can't be blank.") }
    it { should validate_presence_of(:zip).with_message("Zip can't be blank.") }
    it { should validate_presence_of(:password).with_message("Password can't be blank.") }
  end

  describe "relationships" do 
    it { should have_many :gardens }
  end
end

