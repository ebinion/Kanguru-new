module CurrentRecommendationsHelper
  
  def condition_class(current_weather)
    
    if current_weather.condition.downcase.match('rain') || current_weather.condition.downcase.match('drizzle')
      return "rain"
    elsif current_weather.condition.downcase.match('sunny') || current_weather.condition.downcase.match('cloud')
      return "sunny"
    elsif current_weather.condition.downcase.match('snow')
      return "snow"
    end
    
  end
end