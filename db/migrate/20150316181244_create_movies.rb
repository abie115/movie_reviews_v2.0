class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :category
      t.date :release_date
      t.text :review
      t.string :name

      t.timestamps null: false
    end
  end
end
