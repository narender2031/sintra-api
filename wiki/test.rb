def save_content(title, content)
    File.open("pages/#{title}.txt", "w") do |file|
        file.print(content)
    end
end    

save_content("ANku" ,"Hello bhai kisa hai tu ")