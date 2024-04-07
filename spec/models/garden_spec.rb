require 'rails_helper'

RSpec.describe Garden, type: :model do
  describe "validations" do 
    it { should validate_presence_of(:name).with_message("Name can't be blank.") }
    it { should validate_presence_of(:user_id).with_message("User MUST exist; user_id can't be blank.") }
  end

  describe "relationships" do 
    it { should belong_to(:user) }
  end
end
