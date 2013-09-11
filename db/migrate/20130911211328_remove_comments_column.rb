class RemoveCommentsColumn < ActiveRecord::Migration
  def change
  	remove_column :comments, :comments
  end
end
