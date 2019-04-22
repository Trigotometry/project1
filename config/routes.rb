# == Route Map
#
#          Prefix Verb   URI Pattern                                Controller#Action
#            root GET    /                                          topics#index
#     topic_posts GET    /topics/:topic_id/posts(.:format)          posts#index
#                 POST   /topics/:topic_id/posts(.:format)          posts#create
#  new_topic_post GET    /topics/:topic_id/posts/new(.:format)      posts#new
# edit_topic_post GET    /topics/:topic_id/posts/:id/edit(.:format) posts#edit
#      topic_post GET    /topics/:topic_id/posts/:id(.:format)      posts#show
#                 PATCH  /topics/:topic_id/posts/:id(.:format)      posts#update
#                 PUT    /topics/:topic_id/posts/:id(.:format)      posts#update
#                 DELETE /topics/:topic_id/posts/:id(.:format)      posts#destroy
#          topics GET    /topics(.:format)                          topics#index
#                 POST   /topics(.:format)                          topics#create
#       new_topic GET    /topics/new(.:format)                      topics#new
#      edit_topic GET    /topics/:id/edit(.:format)                 topics#edit
#           topic GET    /topics/:id(.:format)                      topics#show
#                 PATCH  /topics/:id(.:format)                      topics#update
#                 PUT    /topics/:id(.:format)                      topics#update
#                 DELETE /topics/:id(.:format)                      topics#destroy

Rails.application.routes.draw do

	root :to => 'topics#index'
	resources :topics # do
		# resources :posts
	# end

	get '/topics/:topic_id/posts/:post_id' => 'posts#show'

end
