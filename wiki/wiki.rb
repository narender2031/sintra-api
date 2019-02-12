require "sinatra"

def page_content(title)
  File.read("pages/#{title}.txt")
  rescue Errno::ENOENT
  return nil
end

get "/" do
   erb :welcome
end  


get "/new" do
    erb :new
end



get "/:title" do
    @title = params[:title]
    @content = page_content(params[:title]) 
    erb :show
end

# {"title"=>" s s", "content"=>"s s "}
post "/create" do
  
  save_content(params[:title], params[:content])
end