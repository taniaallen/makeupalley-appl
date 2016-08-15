class Comment < ApplicationRecord
	belongs_to :topic, inverse_of: :comments
	belongs_to :user, inverse_of: :comments
end
