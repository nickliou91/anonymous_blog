

get '/posts/new_post' do

@tag = Tag.all
erb :new_post


end


get '/posts/:id' do
@single_post= Post.find(params[:id])

erb :single_post

end

post '/posts/new_post' do
  # byebug
  new_post = Post.new

  # tag = Tag.find(3)
  # new_post.tags << tag     put tag into the new_post.tag

  new_post.author = params[:author]
  new_post.title = params[:title]
  new_post.content = params[:content]
  new_post.save
  post = Post.last
  # tag =Tag.all

  params[:key].each do |key , value|
      PostsTag.create(post_id: post.id, tag_id: value)
  end

  if  !new_post.new_record?
    puts "what"
    redirect "/"
  else
    @error_msg = new_post.errors.full_messages
    erb :new_post
  end
end

post 'posts/:id' do
  redirect "/"
end


post '/posts/:id/edit' do
   @post = Post.find(params[:id])
   @tag = Tag.all

  erb :edit_post
end

post '/posts/:id/delete' do

  redirect "/"
end


