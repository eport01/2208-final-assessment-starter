class Api::V1::TouristSitesController < ApplicationController
  def show  
    require 'pry'; binding.pry
    PlacesFacade.tourist_sites(params[:country])
  end
end