class AddPortfolioPlaceToTesk < ActiveRecord::Migration[5.1]
  def change
    add_reference :tesks, :portfolio, foreign_key: true
    add_reference :tesks, :place, foreign_key: true
  end
end
