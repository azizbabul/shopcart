class Product < ApplicationRecord
  has_many :items


  def self.price
    val = 0
    Product.all.each do|i|

      val+= i.price


    end
    return val
  end
end
