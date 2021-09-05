# TestApp

## Application technical details

* Ruby version
2.6.5

* System dependencies
	- The dependencies are specified in the Gemfile which is located in the root folder of the application.

* Configuration and setup (local)
	- As I setup everything on windows 10 OS so install the rails from the following link (https://guides.railsgirls.com/install#setup-for-windows) and follow instructions to install ruby, git,node.js,yarn and rails. Please install ruby 2.6.5 with Devkit for 32 bit. I had trouble installing 64 bit ruby.
	- After following all instructions from the last step, install postgres for windows
	- Create a folder and clone this repository by running this command from cmd ***git clone https://github.com/mr-syedkazimraza/checkoutTest.git***
	- The username and password for the postgres database is to be changed in config/database.yml file. The current username and password for my setup were postgres. Change it to your username and password which you set up while installing postgres database engine
	- Run this command ***bundle install*** to install the missing gems. You don't need to adjust the gem file as it contains the necessary configuration set up already 
	- After installing necessary gems, run this command ***rake db:create*** to create the database 
	- If you get no errors then run this command ***rails server*** and after running the command go to the link (http://localhost:3000) to use the app 
* Database creation
	- In order to create database run this command ***rake db:create*** from the application root folder in the cmd
	- In order to run the changes made to the models,run this command ***rake db:migrate*** from the application root folder in the cmd

* Database initialization

* How to run the test suite
	- The tests have only been written for models yet. I don't have time to write tests for controllers as the tasks done by me should be able to convey the message that I am able to understand the frameworks and write code using the standards defined by the community but I need more time to learn rails.
	- Run this command ***rails test test/models/card_datum_test.rb*** from the root folder of the app to run the card model tests 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
	- The deployement instructions have been followed from this link (https://devcenter.heroku.com/articles/getting-started-with-rails4). 
	- while deploying on heroku, the tutorial in the link provided uses master branch but as we know git is moving towards main branch and my application has main branch as well. So you will get error when you run this command ***git push heroku master*** after creating app on heroku.

## How to use the app

* Click on this link (https://hidden-caverns-80044.herokuapp.com/) to open the live version of the app deployed on heroku.
* You will see a form with card number, email, address and description fields.
* Its necessary to type in card number,email and address before sumbitting the form.
* The length of card number should be 16. The maximum length of email is 40 characters. The minimum length for address is 15 and maximum is 50. The maximum length for description is 50 characters.
* The field length have been set by me so that user does not enter whatever he/she wants.
* Typing 5560000000000001 card number will result in card declined and you will see card declined message only if the email and address is also entered otherwise form will turn the missing fields into red from black and you will not be able to submit the form.
* Typing 5520000000000000 card number will result in card accepted and you will see card accepted message.
* Typing any other card number with the length of 16 will show the message of 'Something went wrong'.

## Issues
* Because the description field is not necessary, It should not have asterisk on it in the html form.

## Some usefull links I used while developing this application.
	- https://guides.railsgirls.com/install#setup-for-windows (Installing all ruby, rails,git and node.js)
	- https://guides.rubyonrails.org/getting_started.html (Getting started)
	- https://devcenter.heroku.com/articles/getting-started-with-rails4 (Deploying on heroku)
	- https://edgeguides.rubyonrails.org/action_controller_overview.html (Strong parameters)
	- https://www.digitalocean.com/community/tutorials/how-to-set-up-ruby-on-rails-with-postgres (digital ocean tutorial)
	- https://guides.rubyonrails.org/active_record_validations.html (Rails models validations)
	- https://dev.to/saintaze/a-guide-to-creating-forms-in-ruby-on-rails-6-49do (Rails form creation guides for beginners)
	- https://guides.rubyonrails.org/v4.2/testing.html (Rails testing)
