# == Schema Information
#
# Table name: topics
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  subtitle   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Topic < ApplicationRecord
	has_many :posts
	has_many :responses, :through => :posts
end
