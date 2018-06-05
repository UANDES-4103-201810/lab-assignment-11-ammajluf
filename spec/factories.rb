FactoryBot.define do
  # factory :message do
  #   user nil
  #   date "2018-06-05"
  #   content "MyString"
  # end
  # factory :user do
  #   username "MyString"
  #   email "MyString"
  #   password "MyString"
  # end

  factory :user do
    username "Alvaro"
    email "amajluf@miuandes.cl"
    password "alvaro12345"
  end

  factory :message do
    user_id 1
    date "2015-07-08"
    content "hola a todos"
  end
# Add other factories in here
end

