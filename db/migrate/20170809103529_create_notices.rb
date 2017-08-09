class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :body
      t.string :title

      t.timestamps
    end
  end
end
