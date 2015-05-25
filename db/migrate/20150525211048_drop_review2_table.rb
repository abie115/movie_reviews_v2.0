class DropReview2Table < ActiveRecord::Migration
  def change
    drop_table :review_tables
  end
end
