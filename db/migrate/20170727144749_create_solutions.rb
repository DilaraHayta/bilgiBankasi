class CreateSolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :solutions do |t|
      t.string :sol_type
      t.string :title
      t.string :body
      t.string :version
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :device

      t.timestamps
    end
  end
end
