class CartedTaco < ActiveRecord::Base
  belongs_to :user
  belongs_to :taco
  belongs_to :order

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0, only_integer: true }

end
