class Forecast < ApplicationRecord
  def self.get_last_seven(zip)
    Forecast.where(zip: zip).order(date: :asc)
  end
end
