class PagesController < ApplicationController
  def index
    render :index
  end

  def search
    # make the API call
    url = "http://api.aerisapi.com/forecasts/#{params['zip']}?client_id=5WmX72QplQE5kV8LGudPr&client_secret=vKRvWOc4QGplORW8VZ60WMMRemrJNvSaFnxNjbKt"
    puts url
    # save to DB
    render :display
  end
end
