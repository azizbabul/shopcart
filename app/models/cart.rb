class Cart < ApplicationRecord
  has_many :items, :dependent=>:destroy

  def addProduct(product_id)
     current_item = Item.find_by_id(product_id)
     if current_item
      current_item.count+=1
    else
      items.build(:product_id=>product_id)
    end
end
end