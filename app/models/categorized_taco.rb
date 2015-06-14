class CategorizedTaco < ActiveRecord::Base
  belongs_to :category
  belongs_to :taco
end
