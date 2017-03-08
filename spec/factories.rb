# This will guess the User class
FactoryGirl.define do
  factory :user do
    username "John"
  end

  factory :post, class: Post do
    title "Mike Lachine born!"
    content  "A miracle happened!"
    user
  end
end
