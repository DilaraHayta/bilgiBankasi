class AddLogoColumnsToCustomers < ActiveRecord::Migration[5.0]

  def up
      add_attachment :customers, :logo
    end

    def down
      remove_attachment :customers, :logo
    end

end
