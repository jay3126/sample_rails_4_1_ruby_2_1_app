class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :created_by

      t.timestamps
    end
  end
end
