# frozen_string_literal: true

class Rent < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :book, required: true
end
