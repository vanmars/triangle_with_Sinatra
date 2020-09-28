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

# get('/test') do
#   @something = "this is a variable"
#   erb(:whatever)
# end

# get('/') do
#   @albums = Album.all
#   erb(:albums)
# end

# get('/albums') do
#   @albums = Album.all
#   erb(:albums)
# end

# get('/albums/new') do
#   erb(:new_album)
# end

# post('/albums') do
#   name = params[:album_name]
#   album = Album.new(name, nil)
#   album.save()
#   @albums = Album.all() # Adding this line will fix the error
#   erb(:albums)
# end

# get('/albums/:id') do
#   @album = Album.find(params[:id].to_i())
#   erb(:album)
# end

# get('/albums/:id/edit') do
#   @album = Album.find(params[:id].to_i())
#   erb(:edit_album)
# end

# patch('/albums/:id') do
#   @album = Album.find(params[:id].to_i())
#   @album.update(params[:name])
#   @albums = Album.all
#   erb(:albums)
# end

# delete('/albums/:id') do
#   @album = Album.find(params[:id].to_i())
#   @album.delete()
#   @albums = Album.all
#   erb(:albums)
# end