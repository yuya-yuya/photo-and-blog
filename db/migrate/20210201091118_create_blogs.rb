class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end

