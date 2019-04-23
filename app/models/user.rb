# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :text
#  email           :text
#  image           :text
#  dob             :date
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

class User < ApplicationRecord
	has_secure_password

	has_many :posts
	has_many :responses

	# Validations -- see the Rails Guide
	validates :email, :presence => true, :uniqueness => true
end
