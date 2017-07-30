class CreateMarkers < ActiveRecord::Migration[5.1]
  def change
    create_table :markers do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.string :opening
      t.string :closing
      t.integer :address_id

      t.timestamps
    end
  end
end
