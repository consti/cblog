class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :author, foreign_key: true, null: false
      t.text :body
      t.string :title, null: false
      t.datetime :published_at

      t.timestamps
    end
  end
end
