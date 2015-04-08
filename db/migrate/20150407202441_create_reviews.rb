class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.text :body
    	t.integer :chef_id, :recipe_id
    	t.timestamps
    end
  end
end
