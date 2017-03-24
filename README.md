# WeathrCheckr

WeathrCheckr provides your 7-day weather forecast by zip code. It was built solo by [Pat Holland](https://github.com/pholls) in 3 hours as a coding challenge.

The app is deployed on Heroku [here](https://weathrcheckr.herokuapp.com/).

## Technologies

WeathrCheckr uses the [Aeris Weather API](https://www.aerisweather.com/support/docs/api/) to retrieve the 7-day forecast for the provided zip code.

WeathrCheckr was built using Rails 5.

### Future Goals

Given more time, there are a few things I would have liked to improve upon.

* Styling
    * displaying the daily forecasts in a nice grid
    * arranging the boxes
    * making the form display better
* Icons
    * display a relevant picture of the weather forecast
* Not hard-coding the API key
* look up location by zip code
    * display "Weather for [AREA NAME]" instead of zip code on forecast page

#### Run the App Locally

* clone [this repo](https://github.com/pholls/weather.git)
* navigate to the directory
* `bundle install`
    * install dependencies
* `bin/rails s`
    * start the rails server
* navigate to localhost:3000 in a web browser
