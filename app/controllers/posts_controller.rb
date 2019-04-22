class PostsController < ApplicationController

	def index

	end

	def show
		@topic = Topic.find params[:topic_id]
		initial_post = @topic.posts.find params[:post_id]
		@initial_post = initial_post.initial_content
		@responses = initial_post.responses
		# raise "hell"
	end

end
