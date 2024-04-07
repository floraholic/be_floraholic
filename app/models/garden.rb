class Garden < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, message: "Name can't be blank."
  validates_presence_of :user_id, message: "User MUST exist; user_id can't be blank."
end
