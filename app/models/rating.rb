class Rating < ApplicationRecord
  belongs_to :rater, class_name: "User"
  belongs_to :recipe

  validates :rater, uniqueness: { scope: :recipe }
  validates :recipe, :rater, :value, presence: true
end
