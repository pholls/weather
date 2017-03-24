class PagesController < ApplicationController
  def index
    render :index
  end

  def search
    zip = params['zip']
    get_forecast(zip)
    # save to DB
    render :display
  end

  private

  def get_forecast(zip)
    url = "http://api.aerisapi.com/forecasts/#{zip}?client_id=5WmX72QplQE5kV8LGudPr&client_secret=vKRvWOc4QGplORW8VZ60WMMRemrJNvSaFnxNjbKt"
    buffer = open(url, "UserAgent" => "Ruby-Wget").read
    response = JSON.parse(buffer)
    save_forecast(response)
  end

  def save_forecast(data)
    if data['success']
      p data['response'][0]
      # data['response'][0][]
    end
  end
end
