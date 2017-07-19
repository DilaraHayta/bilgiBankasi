class AddFieldsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :sozlesme_yoneticisi, :string
    add_column :customers, :sozlesme_no, :string
    add_column :customers, :sozlesme_baslangıc, :datetime
    add_column :customers, :sozlesme_bitis, :datetime
  end
end
