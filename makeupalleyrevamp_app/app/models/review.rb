class Review < ApplicationRecord
	belongs_ to :product, inverse_of: :reviews
	belongs_to :user, inverse_of: :reviews
end
