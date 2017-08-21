require "sinatra"

set :bind, "0.0.0.0"

get "/success" do
  status 200
end

get "/failure" do
  status 400
end
