class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
private

  def current_cart()

    cart= Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound

  cart = Cart.create
      session[:cart_id]= cart.id



return  cart
end



  def add
    @product= Product.create(name:"az",price:"10", description:"aadddf", image_url:"book1.jpg")
    return @product
  end
end


