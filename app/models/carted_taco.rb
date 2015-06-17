class CartedTaco < ActiveRecord::Base
  belongs_to :user
  belongs_to :taco
  belongs_to :order
end
