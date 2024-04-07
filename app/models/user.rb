class User < ApplicationRecord
	has_many :gardens
	
	validates_presence_of :f_name, message: "First name can't be blank."
	validates_presence_of :l_name, message: "Last name can't be blank."
	validates_presence_of :email, :phone, :street, :city, :state, :zip, message: "%{attribute} can't be blank."
	validates_presence_of :password, message: "Password can't be blank."

	has_secure_password
end

