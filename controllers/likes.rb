get "/places-list" do
  erb :"likes/places-list"
end

get "/new-like" do

  @new_like = Like.add("user_id" => params["user_id"], "place_id" => params["place_id"], "rating" => params["rating"])

  erb :"likes/new-like"
end

get "/view-all-likes" do
  erb :"likes/view-all-likes"
end

get "/delete-like" do
  erb :"likes/delete-like"
end

get "/manage-like" do
  erb :"likes/manage-like"
end
get "/users-list" do
  @all =  User.all
  erb :"likes/users-list"
end

get "/view-user-likes" do
  @user = User.find(params["user_id"])
  erb :"likes/view-user-likes"
end

get "/user-list-single-view" do
  @all =  User.all
  erb :"likes/user-list-single-view"
end