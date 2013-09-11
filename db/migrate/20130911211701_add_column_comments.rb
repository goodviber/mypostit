class AddColumnComments < ActiveRecord::Migration
  def change
  	add_column :comments, :description, :text
  end
end
