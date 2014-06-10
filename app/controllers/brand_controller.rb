class BrandController < ApplicationController

  def destroy
    brand = Brand.find_by("id" => params["id"])
    brand.delete
    redirect_to "/brand"
  end

  def create
    Brand.create("name" => params["name"])
    redirect_to "/brand"
  end


end


