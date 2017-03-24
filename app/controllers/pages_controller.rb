class PagesController < ApplicationController
  def index
    render :index
  end

  def search
    zip = params['zip']
    get_forecast(zip)
    render :display
  end

  private

  def get_forecast(zip)
    url = "http://api.aerisapi.com/forecasts/#{zip}?client_id=5WmX72QplQE5kV8LGudPr&client_secret=vKRvWOc4QGplORW8VZ60WMMRemrJNvSaFnxNjbKt"
    buffer = open(url, "UserAgent" => "Ruby-Wget").read
    response = JSON.parse(buffer)
    save_forecast(response, zip)
  end

  def save_forecast(data, zip)
    if data['success']
      data['response'][0]['periods'].each do |forecast|
        parsed_forecast = {
          zip: zip,
          date: forecast['dateTimeISO'][0...10],
          min_temp_C: forecast['minTempC'],
          max_temp_C: forecast['maxTempC'],
          min_temp_F: forecast['minTempF'],
          max_temp_F: forecast['maxTempF'],
          description: forecast['weather']
        }
        Forecast.find_or_create_by(parsed_forecast)
      end
    end
  end
end
