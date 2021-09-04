# TestApp

### Application technical details

* Ruby version
2.6.5

* System dependencies
The dependencies are specified in the Gemfile which is located in the root folder of the application.

* Configuration
	- As I setup everything on windows 10 OS so install the rails from the following link (https://guides.railsgirls.com/install#setup-for-windows) and follow instructions to install ruby and rails. Please install ruby 2.6.5 with Devkit for 32 bit. I had trouble installing 64 bit ruby.
	- after following all instructions from the last step, install postgres for windows
	- the username and password for the postgres database is to be changed in config/database.yml file. The current username and password for my setup were postgres. Change it to your username and password which you set up while installing postgres
	- run the following command to install the missing gems. You don't need to adjust the gem file as it contains the necessary configuration set up already 'bundle install'
	- after installing necessary gems, run the following command to create the database '''rake db:create'''
	- if you get no errors then run the following command and after running the command go to the link (http://localhost:3000) to use the app 'rails server'

* Database creation
	- in order to create database run the following comman from the application root folder 'rake db:create'

* Database initialization

* How to run the test suite
	-Run this command from the root folder of the app to run the card model tests 'rails test test/models/card_datum_test.rb'

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
The deployement instructions have been followed from the link (https://devcenter.heroku.com/articles/getting-started-with-rails4).

* ...
