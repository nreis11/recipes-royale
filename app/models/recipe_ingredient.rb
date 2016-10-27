class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :recipe, :ingredient, :amount, :measurement, presence: true
end
