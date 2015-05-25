class DropReviewTable < ActiveRecord::Migration
  def change
    remove_foreign_key :reviews, name: :fk_rails_5350d1b47c
    drop_table :reviews
  end
end
