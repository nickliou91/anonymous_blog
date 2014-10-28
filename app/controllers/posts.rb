get '/posts/new_post' do
erb :new_post


end


get '/posts/:id' do
@single_post= Post.find(params[:id])

erb :single_post

end

post '/posts/new_post' do
  new_post = Post.new
  new_post.author = params[:author]
  new_post.title = params[:title]
  new_post.content = params[:content]
  new_post.save
  if  !new_post.new_record?
    puts "what"
    redirect "/"
  else
    @error_msg = new_post.errors.full_messages
    erb :new_post
  end
end



