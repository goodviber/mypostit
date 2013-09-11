class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(post_params)

		if @comment.save
			flash[:notice] = 'You added your comment'
			redirect_to post_comment_path
		else
			render :new
		end
  end

end