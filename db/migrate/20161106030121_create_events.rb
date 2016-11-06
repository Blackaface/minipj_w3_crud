class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :descrioption
      t.string :isbn

      t.timestamps
    end
  end
end
