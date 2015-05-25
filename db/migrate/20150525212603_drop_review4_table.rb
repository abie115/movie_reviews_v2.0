class DropReview4Table < ActiveRecord::Migration
  def change
    drop_table :reviews
  end
end
