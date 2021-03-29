class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text, null: false
      t.text :content, null: false
      t.date :party_time, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
