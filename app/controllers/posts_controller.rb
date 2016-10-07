class PostsController < ApplicationController
	def create
		post = Post.create post_params
		redirect_to :back
	end
	def show
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:title, :content, :blog_id)
	end
end
