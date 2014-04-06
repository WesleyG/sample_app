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
  3.) Run tests (1 failure)
     $ bundle exec rspec spec/requests/user_pages_spec.rb
     # or run all request tests with
     $ bundle exec rspec spec/requests/
     # or all tests with
     $ bundle exec rspec spec/
  4.) Add the signup route
     match '/signup',  to: 'users#new',            via: 'get'
  5.) Add title to the signup page
     <% provide(:title, 'Sign up') %>
     <h1>Sign up</h1>

Generating a user model
  1.) $ rails generate model User name:string email:string
    (Note that, in contrast to the plural convention for controller names, 
    model names are singular: a Users controller, but a User model.)

WGG 04/06/2014 12:43 PM -- In Rails, the default data structure for a data
 model is called, naturally enough, a model (the M in MVC). The default Rails
 solution to the problem of persistence is to use a database for long-term
 data storage, and the default library for interacting with the database is 
 called Active Record.

WGG 04/06/2014 11:11 AM -- adding notes on making a route for sign up page

WGG 04/05/2014 04:27 PM -- completed chapter 3 without the complex testing section

WGG 04/04/2014 05:27 PM -- completed up to section "3.3.4 Eliminating duplication with layouts"
WGG 04/03/2014 10:38 PM -- completed up to "3.3 Slightly dynamic pages"

WGG 04/03/2014 09:00 PM -- working on postgres and localhost:3000/static_pages/home

WGG 04/03/2014 -- Running on Heroku

WGG 04/03/2014 -- Same as above tutorial but running postgres locally
on Mac OSX
