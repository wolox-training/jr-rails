class Rent < ApplicationRecord
  belongs_to :user_id, presence: true
  belongs_to :book_id, presence: true
end
