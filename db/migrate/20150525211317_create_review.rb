class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content 
      t.string :nick 
      t.date :add_date
      t.integer :movie_id
    end
  end
end
