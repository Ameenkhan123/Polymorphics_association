class AddImageableIdToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :imageable_id, :integer
  end
end
