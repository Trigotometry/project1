class ResponsesController < ApplicationController

	def create
		response = Response.new
		response.update	response_params

		post = Post.find params[:post_id]
		post.responses << response

		@current_user.responses << response
		post = response.post.id
		topic = response.post.topic.id

		redirect_to topic_post_path( topic, post )
	end

	def	update
		response = Response.find params[:id]
		response.update response_params

		post = response.post.id
		topic = response.post.topic.id
		redirect_to topic_post_path( topic, post )
	end

	private
	def response_params
		params.require(:response).permit(:content)
	end
end
