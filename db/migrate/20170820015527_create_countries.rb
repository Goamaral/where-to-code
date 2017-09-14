class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :sortname
      t.string :name
      t.integer :phonecode
    end
  end
end