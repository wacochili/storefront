class Category < ActiveRecord::Base
  has_many :categorized_tacos
  has_many :tacos, through: :categorized_tacos
end
