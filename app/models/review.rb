class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  has_many :comments
  default_scope -> { order(created_at: :desc) }
  validates :movie_id, presence: true
end
