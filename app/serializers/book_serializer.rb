# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :author, :image, :publisher, :year

  has_many :rents
end
