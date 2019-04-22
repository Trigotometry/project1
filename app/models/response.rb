# == Schema Information
#
# Table name: responses
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
	belongs_to :post, :optional => true
	belongs_to :user, :optional => true
end
