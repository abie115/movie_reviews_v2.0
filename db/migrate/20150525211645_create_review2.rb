class CreateReview2 < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description 
      t.string :nick 
      t.date :add_date
      t.integer :movie_id
      
      t.string :title
      t.text :description
      t.integer :movie_id
      t.integer :user_id
    end
  end
end
