class AthleteController < ApplicationController

    def destroy
    athlete = Athlete.find_by("id" => params["id"])
    athlete.delete
    redirect_to "/athlete"
  end

  def create
  Athlete.create("first_name" => params["first_name"], "last_name" => params["last_name"], "image_url" => params["image_url"], "team_id" => params["team_id"], "sport_id" => params["sport_id"], "twitter_name" => params["twitter_name"], "position" => params["position"])
    redirect_to "/athlete"
  end



  #def update
    #sport = Sport.find_by("id" => params["id"])
    #sport.update("sport_name" => params["id"])
    #redirect_to "/sport"
  #end

end