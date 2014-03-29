class PostsController < ApplicationController

	def index
		#everything here will be run when someone goes to /posts
		@posts = Post.all
	end

end
