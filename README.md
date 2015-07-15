# rails-one-to-many-library

In this assignment you will be building a CRUD app for a Library. Your application should consist of two resources, books and authors.

###Each Author should have a/an:

first name   
last name  
age  
###Each Book should have a/an:

title  
description  
author_id  
###For this application, assume that one Author has many books

##Getting Started

Create a new rails application  
Include pry-rails in your Gemfile and run bundle  
Generate your models and pending migrations (don't forget the necessary code to set up your association)  
Run rake db:migrate  
Open up rails console and make sure you have set up your association correctly  
Ensure that when an Author is deleted, all of its books are deleted as well (we don't want any orphaned children!)  
Generate your controllers and views (always remember, controllers in the plural!)  
Head to your routes.rb and use nested resources to build your routes  
Start working on your controllers and views  
##Bonus

Refactor your routes.rb and use shallow routing for your nested resource. This will involve you changing some things in your views and controllers as well.  
See where you are repeating yourself in your controller. Research before_action (previously called before_filter) and try to refactor your code into a private method that gets called using a before_action  
Include Bootstrap/Bootswatch and style your application.  
Include jQuery and add some dynamic behavior to your app.  