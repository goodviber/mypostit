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
		@post = Post.new(post_params)

		if @post.save
			flash[:notice] = 'You created a post'
			redirect_to root_path
		else
			render :new
		end
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

  	binding.pry
		if @post.save
			flash[:notice] = 'You updated a post'
			redirect_to root_path
		else
			render :new
		end

  end

  def post_params
  	params.require(:post).permit!
  end
end
