get "/save-user" do

  @new_user = User.add({"name" => params["name"]})

  erb :"users/save-user"
end


get "/save-change-user" do

  @d = User.new({"id" => params["x"], "name" => params["name"]})

  @d.save

  erb :"users/save-change-user"
end

get "/edit-user-form" do
  @d = User.find(params["user_id"].to_i).first

  erb :"users/edit-user-form"
end

get "/confirm-delete-user" do
  @d = User.find(params["user_id"].to_i).first
  @name = @d.name
  @d.delete

  erb :"users/confirm-delete-user"
end

get "/manage-user" do
  erb :"users/manage-user"
end

get "/delete-user" do
  erb :"users/delete-user"
end

get "/view-users" do
  erb :"users/view-users"
end

get "/edit-user-list" do
  erb :"users/edit-user-list"
end

get "/new-user-form" do
  erb :"users/new-user-form"
end



































