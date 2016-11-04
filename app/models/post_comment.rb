class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment_entry, :post_id, presence: true
end
