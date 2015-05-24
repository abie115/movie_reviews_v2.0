class Comment < ActiveRecord::Base
  belongs_to :review
  default_scope -> { order(created_at: :desc) }
  validates :review_id, presence: true

end
