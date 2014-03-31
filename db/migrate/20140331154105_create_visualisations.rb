class CreateVisualisations < ActiveRecord::Migration
  def change
    create_table :visualisations do |t|
      t.text :libName
      t.text :libLocation
      t.text :description
      t.integer :minNoOfParameters
      t.integer :maxNoOfParameters

      t.timestamps
    end
  end
end
