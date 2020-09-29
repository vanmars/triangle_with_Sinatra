#!/usr/bin/ruby

require('sinatra')
require('sinatra/reloader')
require('./lib/triangle_checker')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

post('/result') do
  side1 = params[:side1].to_i
  side2 = params[:side2].to_i
  side3 = params[:side3].to_i
  tri_check = TriangleChecker.new(side1, side2, side3)
  @result = tri_check.get_triangle
  erb(:result)
end
