class PostsController < ApplicationController

	def index
	end

	def new
		@topic = Topic.find params[:topic_id]
		@post = Post.new
	end

	def create
		post = Post.create post_params
		redirect_to
	end

	def show
		@topic = Topic.find params[:topic_id]
		initial_post = @topic.posts.find params[:id]
		@initial_post = initial_post.initial_content
		@responses = initial_post.responses
	end

	private
	def post_params
		params.require(:post).permit(:post_title, :initial_content)
	end

end
