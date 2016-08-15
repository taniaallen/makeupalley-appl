class Review < ApplicationRecord
	belongs_to :product, inverse_of: :reviews
	belongs_to :user, inverse_of: :reviews
end
