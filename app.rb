require('sinatra')
require('sinatra/reloader')
require('./lib/triangle_checker')
require('pry')
also_reload('lib/**/*.rb')

get('/form') do
  erb(:form)
end

post('/result') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triCheck = TriangleChecker.new(side1, side2, side3)
  @result = triCheck.get_triangle()
  erb(:result)
end