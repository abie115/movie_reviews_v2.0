class Comment < ActiveRecord::Base
  belongs_to :movie
  default_scope -> { order(created_at: :desc) }
  validates :movie_id, presence: true

end
