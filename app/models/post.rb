# == Schema Information
#
# Table name: posts
#
#  id              :bigint(8)        not null, primary key
#  initial_content :text
#  topic_id        :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  post_title      :text
#

class Post < ApplicationRecord
	belongs_to :topic, :optional => true
	belongs_to :user, :optional => true
	has_many :responses
end
