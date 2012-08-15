class CurrentRecommendationsController < ApplicationController
  def index
    if CurrentWeather.where("created_at > ?", 1.hour.ago).count > 0
      @weather = CurrentWeather.where("created_at > ?", 1.hour.ago).order("created_at DESC").limit(1)[0]
    else
      @weather = CurrentWeather.create
    end
    
    if params[:destination]
      @destination = params[:destination]
    else
      @destination = ""
    end
    
  end
  
  def destination
    latitude = cookies[:lat]
    longitude = cookies[:lon]

    def split(a)
        b = "%.3f" % a
        return b
    end

    @lat_string = split(latitude.to_f).to_s
    @lon_string = split(longitude.to_f).to_s

    @lat = @lat_string
    @lon = @lon_string

    # @lat = cookies[:lat].to_f
    # @lon = cookies[:lon].to_f
    @acc = cookies[:acc]
    
  end
end
