class CreateForecasts < ActiveRecord::Migration[5.0]
  def change
    create_table :forecasts do |t|
      t.string :date, null: false
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.string :description, null: false
      t.integer :min_temp_F, null: false
      t.integer :min_temp_C, null: false
      t.integer :max_temp_F, null: false
      t.integer :max_temp_C, null: false

      t.timestamps
    end
  end
end
