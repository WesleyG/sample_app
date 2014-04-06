# Ruby on Rails Tutorial: sample application

This is the sample application for
the [*Ruby on Rails Tutorial*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

Process to add pages
  1.) add relevant tests to spec/requests/static_pages_spec.rb
  2.) add route to config/routes.rb
  3.) add the relevant action to the controller
  4.) test with bundle exec rspec spec/requests/static_pages_spec.rb

Making a route for the sign up page from rails tutorial sect 5.4
  1.) Generate users controller
     $ rails generate controller Users new --no-test-framework
  2.) Generate integration tests
     $ rails generate integration_test user_pages

WGG 04/06/2014 11:11 AM -- adding notes on making a route for sign up page

WGG 04/05/2014 04:27 PM -- completed chapter 3 without the complex testing section

WGG 04/04/2014 05:27 PM -- completed up to section "3.3.4 Eliminating duplication with layouts"
WGG 04/03/2014 10:38 PM -- completed up to "3.3 Slightly dynamic pages"

WGG 04/03/2014 09:00 PM -- working on postgres and localhost:3000/static_pages/home

WGG 04/03/2014 -- Running on Heroku

WGG 04/03/2014 -- Same as above tutorial but running postgres locally
on Mac OSX
