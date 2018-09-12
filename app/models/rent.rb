class Rent < ApplicationRecord
  belongs_to :user, presence: true
  belongs_to :book, presence: true
end
