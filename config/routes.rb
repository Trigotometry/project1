# == Route Map
#
#          Prefix Verb   URI Pattern                                Controller#Action
#           users GET    /users(.:format)                           users#index
#                 POST   /users(.:format)                           users#create
#        new_user GET    /users/new(.:format)                       users#new
#            user PATCH  /users/:id(.:format)                       users#update
#                 PUT    /users/:id(.:format)                       users#update
#     topic_posts POST   /topics/:topic_id/posts(.:format)          posts#create
#  new_topic_post GET    /topics/:topic_id/posts/new(.:format)      posts#new
# edit_topic_post GET    /topics/:topic_id/posts/:id/edit(.:format) posts#edit
#      topic_post GET    /topics/:topic_id/posts/:id(.:format)      posts#show
#                 PATCH  /topics/:topic_id/posts/:id(.:format)      posts#update
#                 PUT    /topics/:topic_id/posts/:id(.:format)      posts#update
#          topics GET    /topics(.:format)                          topics#index
#                 POST   /topics(.:format)                          topics#create
#       new_topic GET    /topics/new(.:format)                      topics#new
#      edit_topic GET    /topics/:id/edit(.:format)                 topics#edit
#           topic GET    /topics/:id(.:format)                      topics#show
#                 PATCH  /topics/:id(.:format)                      topics#update
#                 PUT    /topics/:id(.:format)                      topics#update
#                 DELETE /topics/:id(.:format)                      topics#destroy
#           login GET    /login(.:format)                           session#new
#                 POST   /login(.:format)                           session#create
#                 DELETE /login(.:format)                           session#destroy

Rails.application.routes.draw do

	# root :to => 'topics#index'
	resources :users, :only => [:index, :new, :create, :update]
	resources :topics  do
		resources :posts, :only => [:new, :create, :show, :edit, :update]
	end

	get '/login' => 'session#new'
	post '/login' => 'session#create'
	delete '/login' => 'session#destroy'

end
