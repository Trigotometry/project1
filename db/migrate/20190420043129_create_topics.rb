class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
		t.text :title
		t.text :subtitle

      	t.timestamps
    end
  end
end
