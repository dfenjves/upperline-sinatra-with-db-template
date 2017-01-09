# Sinatra Template + Basic ActiveRecord

This template provides a boilerplate Sinatra MVC application that can be used for reference or to fork/clone and build simple applications. In this version, we've added in ActiveRecord as an ORM to connect to SQL databases (we're using sqlite3 here). There is currently one migration, and one model (Item).

## Getting Started
+ Fork and clone this repository
+ `cd` into the repo and run `bundle install` to install all dependencies.
+ Run your migrations to get the database set up:
  + `rake db:create`
  + `rake db:migrate`
+ Run `shotgun` in the command line to spin up a local server at `http://localhost:9393/`

## Challenges

+ *Easy:* Add a column to the `Items` table called "rating" that is an integer.
+ *Easy:* Remove the color column from the `Items` table.
+ *Medium:* Create a new table called `Owners` (and an accompanying model). Create a "has many - belongs to" relationship between Owners and Items.
+ *Medium:* Add a form to register new owners, and modify the 'new item' form to add an owner to an item.
+ *Challenge:* - Update the front end to have pages with lists of owners and items, and pages for each individual item (with a link to its owner) and each owner (with a list of the owner's item). Try using RESTful routing.
+ *Challenge:* Allow owners to log in and only allow items to be created by an owner once they are logged in - You'll need to use sessions!
