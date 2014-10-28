get '/tags/new_tags' do
  @tag = Tag.all
  erb :new_tags
end

post '/tags/new_tags' do
  @tag = Tag.all
  new_tags = Tag.new
  new_tags.tag_name = params[:tag_name]
  new_tags.save
 if  !new_tags.new_record?
    puts "Updated Successful"
    erb :new_tags
  else
    @error_msg = new_tags.errors.full_messages
    erb :new_tags
  end

end
