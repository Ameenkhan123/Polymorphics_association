class AddImageableIdToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :imageable_id, :integer
  end
end
