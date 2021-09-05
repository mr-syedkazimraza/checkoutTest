# TestApp

### Application technical details

* Ruby version
2.6.5

* System dependencies
	- The dependencies are specified in the Gemfile which is located in the root folder of the application.

* Configuration and setup
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
The tests have only been written for models yet. I don't have time to write tests for controllers as the tasks done by me should be able to convey the message that I am able to understand the frameworks and write code using the standards defined by the community but I need more time to learn rails.
	-Run this command ***rails test test/models/card_datum_test.rb*** from the root folder of the app to run the card model tests 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
The deployement instructions have been followed from this link (https://devcenter.heroku.com/articles/getting-started-with-rails4). 

###How to use

