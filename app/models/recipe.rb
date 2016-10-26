class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  belongs_to :course
  has_many :ratings
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, :difficulty, :prep_time, :directions, :creator, :course, presence: true
end
