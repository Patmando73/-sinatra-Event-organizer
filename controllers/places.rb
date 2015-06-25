get "/places/:webpage" do
  erb :"places/#{params["webpage"]}"
end