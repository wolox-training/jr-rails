FactoryBot.define do
  factory :rent do
    user_id { nil }
    book_id { nil }
    from { "2018-09-11" }
    to { "2018-09-11" }
  end
end
