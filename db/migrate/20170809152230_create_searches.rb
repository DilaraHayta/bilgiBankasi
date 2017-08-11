class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.references :device, foreign_key: true
      t.references :solution, foreign_key: true

      t.timestamps
    end
  end
end
