# WeathrCheckr

WeathrCheckr provides your 7-day weather forecast by zip code. It was built solo by [Pat Holland](https://github.com/pholls) in 3 hours as a coding challenge.

The app is deployed on Heroku [here](https://weathrcheckr.herokuapp.com/).

## Technologies

WeathrCheckr was built using Rails 5. It uses the [Aeris Weather API](https://www.aerisweather.com/support/docs/api/) to retrieve the 7-day forecast for the provided zip code.

### To Run This App Locally

* clone [this repo](https://github.com/pholls/weather.git)
* navigate to the directory
* `bundle install`
* install dependencies
* `bin/rails s`
* start the rails server
* navigate to localhost:3000 in a web browser

#### Future Goals

This was a timed coding challenge. After 3 hours, I submitted what I had. Given more time, there are several things I would have liked to improve upon.

* Styling
    * displaying the daily forecasts in a nice grid
    * arranging the boxes
    * making the form display better
* Icons
    * display a relevant picture of the weather forecast
* Not hard-coding the API key
* Display location name
    * display "Weather for [AREA NAME]" instead of zip code on forecast page
* Testing
    * at this point, this app has 0% test coverage
    * would like to implement SimpleCov and TravisCI in addition to a full test suite
* Validations
    * validations exist at the database level for forecasts, but not within the models
* Optimization
    * method to look up city/state name by zip code
    * helper method to display "Today", "Tomorrow", or the date
    * parse forecast JSON more efficiently
    * many more
