class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, inverse_of: :user, dependent: :destroy
  has_many :products, through: :reviews
  has_many :comments, inverse_of: :user, dependent: :destroy
  has_many :topics, through: :comments
end
