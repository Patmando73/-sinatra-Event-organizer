get "/save-user" do

  @new_user = User.add({"name" => params["name"]})

  erb :"users/save-user"
end


get "/save-change-user" do

  @user = User.new({"id" => params["x"], "name" => params["name"]})

  @user.save

  erb :"users/save-change-user"
end

get "/edit-user-form" do
  @user = User.find(params["user_id"].to_i)

  erb :"users/edit-user-form"
end

get "/confirm-delete-user" do
  @user = User.find(params["user_id"].to_i)
  @name = @user.name
  @user.delete

  erb :"main/home"
end

get "/manage-user" do
  erb :"users/manage-user"
end

get "/delete-user" do
  erb :"users/delete-user"
end

get "/view-users" do
  @all =  User.all

  erb :"users/view-users"
end

get "/edit-user-list" do
  erb :"users/edit-user-list"
end

get "/new-user-form" do
  erb :"users/new-user-form"
end



































