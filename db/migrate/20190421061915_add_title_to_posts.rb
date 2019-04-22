class AddTitleToPosts < ActiveRecord::Migration[5.2]
  def change
	  add_column :posts, :post_title, :text
  end
end
