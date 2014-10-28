get '/' do
  # Look in app/views/index.erb
  @post = Post.all
  @right_content_post = Post.order( "created_at DESC ").limit (10)

  erb :index
end
