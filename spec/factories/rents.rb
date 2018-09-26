# frozen_string_literal: true

FactoryBot.define do
  factory :rent do
    user
    book
    from { Time.zone.now.to_date }
    to { Faker::Date.between(Time.zone.now.to_date, 1.month.from_now) }
  end
end
