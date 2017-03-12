class ListsController < ApplicationController
  def index
    @products = Product.all
  end
end
