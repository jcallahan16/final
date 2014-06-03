class SportsController < ApplicationController
  # Receive form submitted from /actors/new
  def create
    Sport.create("sport_name" => params["sport_name"])
    redirect_to "/sport"
  #end
  # Try commenting out or removing this code entirely
  # to see what would happen.
  #def destroy
   # sport = Sport.find_by("id" => params["id"])
    #sport.delete
   # redirect_to "/sports"
 # end

 # # Receive form submitted from /actors/edit
 # def update
   # sport = Sport.find_by("id" => params["id"])
   # sport.update("sport_name" => params["sport_name"])
   # redirect_to "/sport"
  #end

end