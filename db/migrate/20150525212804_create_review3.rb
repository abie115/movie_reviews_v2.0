class CreateReview3 < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :movie_id
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
