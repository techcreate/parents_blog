class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end
	def create
		@blog = Blog.create(blog_params)
		redirect_to '/blogs/index'
	end
	def show
		@blog = Blog.find(params[:id])
	end



	private
	def blog_params
		params.require(:blog).permit(:name, :description)
	end
end
