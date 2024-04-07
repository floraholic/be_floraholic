class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name_string
      t.string :email_string
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :password_digest

      t.timestamps
    end
  end
end
