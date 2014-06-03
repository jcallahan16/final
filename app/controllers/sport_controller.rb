class SportController < ApplicationController

  def destroy
    sport = Sport.find_by("id" => params["id"])
    sport.delete
    redirect_to "/sport"
  end

  def create
    Sport.create("sport_name" => params["sport_name"])
    redirect_to "/sport"
  end

  def update
    sport = Sport.find_by("id" => params["id"])
    sport.update("sport_name" => params["id"])
    redirect_to "/sport"
  end

end


