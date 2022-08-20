class SearchController < ApplicationController
  def index
    # binding.irb
    if params['location']
      @response = Openweather::Search.by_location(params["location"])
    end  
  end
end
