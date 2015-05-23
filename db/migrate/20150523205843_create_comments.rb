class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :nick
      t.date :add_date
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
        add_index :comments, [:movie_id, :created_at]
  end
end
