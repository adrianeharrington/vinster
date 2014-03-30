class PostsController < ApplicationController

	def index
		#everything here will be run when someone goes to /posts
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		Post.create( post_params )

		redirect_to posts_path

		# HERE
	end

	private

	def post_params
		params.require(:post).permit(:title, :description)
	end
end
