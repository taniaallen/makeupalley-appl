class Product < ApplicationRecord
	has_many :reviews, inverse_of: :product, dependent: :destroy
	has_many :users, through: :reviews
end