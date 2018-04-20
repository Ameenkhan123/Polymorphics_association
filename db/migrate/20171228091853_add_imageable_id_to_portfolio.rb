class AddImageableIdToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :imageable_id, :integer
  end
end
