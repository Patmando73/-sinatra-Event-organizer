get "/:webpage" do
  erb :"users/#{params["webpage"]}"
end

get "/save-user" do

  @new_user = User.add({"name" => params["name"]})

  erb :"users/save-user"
end