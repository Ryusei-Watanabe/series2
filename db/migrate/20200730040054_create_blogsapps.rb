class CreateBlogsapps < ActiveRecord::Migration[5.2]
  def change
    create_table :blogsapps do |t|
      t.string :title
      t.text :content
    end
  end
end
