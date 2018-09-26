FactoryBot.define do
  factory :book_suggestion do
    editorial { Faker::Book.publisher }
    price { Faker::Number.decimal(2) }
    author { Faker::Book.author }
    title { Faker::Book.title }
    link { Faker::Internet.url }
    publisher { Faker::Book.publisher }
    year { Faker::Number.between(1900, 2018) }
    user
  end
end
