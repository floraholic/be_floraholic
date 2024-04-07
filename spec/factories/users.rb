FactoryBot.define do
  factory :user do
    f_name { "MyString" }
    l_name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    password_digest { "MyString" }
  end
end
