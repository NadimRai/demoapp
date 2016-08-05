class User < ActiveRecord::Base
	validates :name, :email, uniqueness: true
	has_many  :microposts
end
