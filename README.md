# Trianlge Tester 

#### Created by Alma Frankenstein and Vanessa Stewart, 2020

## Description
This project uses Sinatra. It creates a route to allow a user to enter three sides of a triangle into a form, and has a route with a method that displays the type of triange (equilateral, isosolese, or scalene, or not a triangle) in a view.

## Specs
| HTTP Verb | Route | CRUD Action | Description | URL |
| --------- | ----- | ----------- | ----------- | --- |
| GET | /form | READ | Get a form to enter three sides of a triangle| localhost:3456/form |
| POST | /form | CREATE | Submit the form to get triangle results | localhost:3456/form |
| GET | /result | READ | Read the triangle results | localhost:3456/form |

## Setup

Clone this repo using:

```git clone https://github.com/alma-frankenstein/triangle_with_Sinatra myRepo```

Cd to the myRepo directory.

Install Bundler with ```gem install bundler```

Each time the Gemfile is changed, run ```bundle install```


To run a script in the terminal:

Enter ```chmod +x <filename.rb>``` to get executable permission

Enter ```./<filename.rb>``` to run the script


## Technologies Used

* Ruby
* Ruby Gems: rspec, pry, sinatra, sinatra-contrib

## Contact Details

For questions or to suggestions, please email A.Q.Frankenstein@gmail.com or vanmariestewart@gamil.com

### License

This software is licensed under the MIT license.

Copyright (c) 2020 Alma Frankenstein and Vanessa Stewart