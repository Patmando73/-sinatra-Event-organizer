get "/new-place-form" do
  erb :"places/new-place-form"
end

get "/users/save-user" do

  @new_place = Place.add({"name" => params["name"]})

  erb :"users/save-user"
end




