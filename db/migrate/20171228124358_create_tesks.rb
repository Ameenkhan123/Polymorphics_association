class CreateTesks < ActiveRecord::Migration[5.1]
  def change
    create_table :tesks do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
