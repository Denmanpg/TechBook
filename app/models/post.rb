class Post < ApplicationRecord

	include PublicActivity::Model

	belongs_to :user
	has_many :post_comments
end
