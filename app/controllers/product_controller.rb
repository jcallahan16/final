class ProductController < ApplicationController

  def destroy
    product = Product.find_by("athlete_id" => params["id"])
  product.delete
    redirect_to "/athlete/#{athlete["id"]}"
  end

  def create
  Product.create("name" => params["name"],"picture" => params["picture"], "url" => params["url"], "athlete_id" => params["athlete_id"], "brand_id" => params["brand_id"])
    redirect_to "/athlete/#{product["athlete_id"]}"
  end

end