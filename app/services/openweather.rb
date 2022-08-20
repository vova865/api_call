module Openweather
  class Search
    def self.by_location(location)
      # Faraday.get 'http://api.openweathermap.org/geo/1.0/direct?q=' + location + '&limit=5&appid=' + ENV['API_KEY']
      Faraday.get 'https://api.openweathermap.org/data/2.5/weather?q=' + location + '&appid=' + ENV['API_KEY']
    end  
  end
end    