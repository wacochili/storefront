class CategorizedTaco < ActiveRecord::Base
  belongs_to :category
  belongs_to :taco
  has_many :carted_tacos
end
