class AddCarToLocationReport < ActiveRecord::Migration[6.1]
  def change
    add_reference :location_reports, :car, null: false, foreign_key: true, index: true
  end
end
