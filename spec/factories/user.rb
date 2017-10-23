FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "User#{n}"}
    sequence(:email) { |n| "email#{n}@example.com"}
    sequence(:password) { |n| "password"}
    provider  'facebook'
    sequence(:uid) { |n| "#{n}"}

    trait :general do
      role :general
    end

    trait :reader do
      role :reader
    end
  end
end
