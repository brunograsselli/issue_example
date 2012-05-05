# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group, class: Market::Group do
    name "MyString"
  end
end
