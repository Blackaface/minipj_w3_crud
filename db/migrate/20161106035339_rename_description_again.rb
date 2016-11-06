class RenameDescriptionAgain < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :description, :text
  	remove_column :events, :descrioption, :text
  end
end
