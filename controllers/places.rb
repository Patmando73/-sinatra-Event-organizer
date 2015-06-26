get "/new-place-form" do
  erb :"places/new-place-form"
end

get "/save-palce" do

  @new_place = Place.add({"name" => params["name"]})

  erb :"places/save-palce"
end








get "/save-change-place" do

  @place = Place.new({"id" => params["x"], "name" => params["name"]})

  @place.save

  erb :"places/save-change-place"
end

get "/edit-palce-form" do
  @place = Place.find(params["place_id"].to_i)

  erb :"places/edit-place-form"
end

get "/confirm-delete-place" do
  @place = Place.find(params["place_id"].to_i)
  @name = @place.name
  @place.delete

  erb :"main/home"
end

get "/manage-place" do
  erb :"places/manage-place"
end

get "/delete-place" do
  erb :"places/delete-place"
end

get "/view-places" do
  @all =  Place.all

  erb :"places/view-places"
end

get "/edit-place-list" do
  erb :"palces/edit-place-list"
end






