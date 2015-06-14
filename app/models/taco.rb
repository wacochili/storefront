class Taco < ActiveRecord::Base
  belongs_to :supplier
  has_many :orders
  has_many :images
  SALES_TAX = 0.09
  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def sale_message
    price = price.to_i
    sale_message = ""
    if price < 2
      sale_message = "Discount Item!"
    else
      sale_message = "On Sale!"
    end
  end

  def tax
    tax = (price.to_f * SALES_TAX)
  end

  def total
    tax = (price.to_f * SALES_TAX)
    tax = price.to_i + tax
  end

end
