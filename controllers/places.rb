get "/new-place-form" do
  erb :"places/new-place-form"
end

get "/save-place" do

  @new_place = Place.add({"name" => params["name"], "address" => params["address"], "age_requirement" => params["age_requirement"], "hours_of_operation" => params["hours_of_operation"], "attractions" => params["attractions"], "parking_garage" => params["parking_garage"]})

  erb :"places/save-place"
end




get "/save-change-place" do

  @place = Place.new({"id" => params["x"], "name" => params["name"], "address" => params["address"], "age_requirement" => params["age_requirement"], "hours_of_operation" => params["hours_of_operation"], "attractions" => params["attractions"], "parking_garage" => params["parking_garage"]})

  @place.save

  erb :"places/save-change-place"
end

get "/edit-place-form" do
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
  erb :"places/edit-place-list"
end






