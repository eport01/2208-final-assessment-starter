class TouristSiteSerializer 
  include JSONAPI::Serializer
  set_id {nil}

  attributes :name, :address, :place_id
end