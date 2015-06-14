class Order < ActiveRecord::Base
  SALES_TAX = 0.09
  belongs_to :user
  belongs_to :taco

  # def tax
  #   tax = (price.to_f * SALES_TAX) #is price available to me here? Was the association has_many :tacos enough?
  # end

  # def total
  #   tax = (price.to_f * SALES_TAX)
  #   tax = price.to_i + tax
  # end
end
