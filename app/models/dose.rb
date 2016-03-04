class Dose < ActiveRecord::Base
  validates :description, :cocktail_id, :ingredient_id, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
  belongs_to :cocktail
  belongs_to :ingredient
end
