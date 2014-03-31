class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :figshare_url
      t.text :dataset
      t.text :uploader

      t.timestamps
    end
  end
end
