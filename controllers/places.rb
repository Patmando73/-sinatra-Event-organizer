get "/:webpage" do
  erb :"places/#{params["webpage"]}"
end