# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product, class: 'Market::Product' do
    name "MyString"
    price 1.5
    quantity 1
    unavailable false
    group nil
  end
end
