class AddReviewToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :review, index: true, foreign_key: true
  end
end
