class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new
    @post.title = params[:title] #You can access each of input values in a form using the hash syntax to grab the elements from the params hash.
    @post.description = params[:description] #When a user submits a form, it is the params hash that contains all the input data. As long as the form is routed to the create method we've written (in config/routes.rb), we'll be able to initialize a new instance of Post, grab those input values from params, assign them the post instance attributes and save the instance to our database.
    @post.save
    redirect_to post_path(@post)
  end

end
