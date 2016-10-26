class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes, foreign_key: :creator_id
  has_many :ratings, foreign_key: :rater_id

  validates :first_name, :last_name, presence: true
end
