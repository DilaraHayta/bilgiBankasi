class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :cihaz_tipi
      t.string :marka
      t.string :model

      t.timestamps
    end
  end
end
