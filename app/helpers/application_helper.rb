module ApplicationHelper
  def price
    val = ""

    Product.all.each do|i|

      val= val + "</br>"+i.name + "" +i.price.to_s


    end
    return val

  end
end

