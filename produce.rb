require "sinatra"

set :bind, "0.0.0.0"
get ("/apple") do
    "<h1>Here's a juicy apple !</h1>"
end

get "/grape" do 
    "<h2> Hello 1 let smake the banana shake</h2>" 
end

get "/banana" do 
    "<h3> lets enjoy the grape juice !</h3>"
end