class Review < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  default_scope -> { order(created_at: :desc) }
  validates :movie_id, presence: true
  validates :title, presence: true, length: { minimum: 10 }
  validates_length_of :description, :minimum => 20
end
