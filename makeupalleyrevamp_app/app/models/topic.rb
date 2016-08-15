class Topic < ApplicationRecord
	has_many :comments, inverse_of: :topic, dependent: :destroy
	has_many :users, through: :comments
	accepts_nested_attributes_for :comments, allow_destroy: true
end