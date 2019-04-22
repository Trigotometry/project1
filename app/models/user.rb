# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :text
#  email      :text
#  image      :text
#  dob        :date
#  admin      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
	has_many :posts
	has_many :responses
end
