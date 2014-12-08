class Shout < ActiveRecord::Base
  belongs_to :user
  # Orders shouts from newest to oldest
  default_scope { order("created_at DESC") }
  validates :body, presence: true
end
