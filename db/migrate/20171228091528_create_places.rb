class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :city
      t.string :state
      t.string :zip
      t.string :address

      t.timestamps
    end
  end
end
