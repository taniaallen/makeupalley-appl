class Product < ApplicationRecord
	has_many :reviews, inverse_of: :product, dependent: :destroy
	has_many :users, through: :reviews
	accepts_nested_attributes_for :reviews, allow_destroy: true
end