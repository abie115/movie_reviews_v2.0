class CreateReviewTable < ActiveRecord::Migration
  def change
    create_table :review_tables do |t|
      t.text :content 
      t.string :nick 
      t.date :add_date
      t.integer :movie_id
    end
  end
end
