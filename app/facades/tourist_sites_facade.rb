class TouristSitesFacade 
  def self.tourist_sites(country)
    @_near_country = CountryFacade.capital_info(country)
    if @_near_country != nil 
      long = @_near_country.longitude
      lat = @_near_country.latitude
      TouristSitesService.nearby_tourist_sites(long, lat)[:features].map do |site|
        TouristSite.new(site)
      end
    else
      nil 
    end
  end

end