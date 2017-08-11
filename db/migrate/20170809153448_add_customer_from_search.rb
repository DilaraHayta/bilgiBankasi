class AddCustomerFromSearch < ActiveRecord::Migration[5.0]
  def change
    add_reference :searches, :customer, foreign_key: true
  end
end
