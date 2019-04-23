class PostsController < ApplicationController

	def index
	end

	def show
		@topic = Topic.find params[:topic_id]
		@initial_post = @topic.posts.find params[:id]
		@responses = @initial_post.responses
	end

	def new
		@topic = Topic.find params[:topic_id]
		@post = Post.new
	end

	def create
		post = Post.create post_params
		topic = Topic.find params[:topic_id]
		@current_user.posts << post
		topic.posts << post
		redirect_to topic_post_path( params[:topic_id], post.id )
	end

	def edit
	end

	def update
	end

	private
	def post_params
		params.require(:post).permit(:post_title, :initial_content)
	end

end
