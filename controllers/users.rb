get "/users/save-user" do

  @new_user = User.add({"name" => params["name"]})

  erb :"users/save-user"
end


get "/users/save-change-user" do

  @d = User.new({"id" => params["x"], "name" => params["name"]})

  @d.save

  erb :"users/save-change-user"
end

get "/users/edit-user-form" do
  @d = User.find(params["user_id"].to_i).first

  erb :"users/edit-user-form"
end

get "/users/confirm-delete-user" do
  @d = User.find(params["user_id"].to_i).first
  @name = @d.name
  @d.delete

  erb :"users/confirm-delete-user"
end





































get "/users/:webpage" do
  erb :"users/#{params["webpage"]}"
end

get "/:webpage" do
  erb :"users/#{params["webpage"]}"
end