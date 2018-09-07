class Book < ApplicationRecord
	validates :genre, presence: true # Make field required
	validates :author, presence: true # Make field required
	validates :image, presence: true # Make field required
	validates :title, presence: true # Make field required
	validates :publisher, presence: true # Make field required
	validates :year, presence: true # Make field required
end