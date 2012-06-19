module CurrentRecommendationsHelper
  
  def condition_class(current_weather)
    
    if current_weather.condition.downcase.match('rain') || current_weather.condition.downcase.match('drizzle')  || current_weather.condition.downcase.match('mist') 
      return "rain"
    elsif current_weather.condition.downcase.match('sun') || current_weather.condition.downcase.match('cloud')
      return "sunny"
    elsif current_weather.condition.downcase.match('snow')
      return "snow"
    elsif current_weather.condition.downcase.match('overcast')
      return "overcast"
    # else
      # return "sunny"
    end
    
  end
  
  def recommended_transportation(current_weather)
    
    @my_conditon = condition_class(current_weather)
    
    if @my_conditon == "rain"
      return "car"
    elsif @my_conditon == "sunny" || @my_conditon == "overcast"
      return "bike"
    else
      return "train"
    end
    
  end
  
  def condition_img(current_weather)
    
    if current_weather.condition.downcase.match('rain') || current_weather.condition.downcase.match('drizzle')  || current_weather.condition.downcase.match('mist') 
      return "/assets/backgrounds/rainy-bg.jpg"
    elsif current_weather.condition.downcase.match('sun') || current_weather.condition.downcase.match('cloud')
      return "/assets/backgrounds/sunny-bg.jpg"
    elsif current_weather.condition.downcase.match('snow')
      return "/assets/backgrounds/snowing-bg.jpg"
    elsif current_weather.condition.downcase.match('overcast')
      return "/assets/backgrounds/overcast-bg.jpg"
    # else
      # return "sunny"
    end
    
  end
  
end