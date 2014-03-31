class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.string :doi
      t.text :title
      t.string :dataSet
      t.text :columnHeadings
      t.belongs_to :visualisation

      t.timestamps
    end
    add_index :figures, :visualisation_id
  end
end
