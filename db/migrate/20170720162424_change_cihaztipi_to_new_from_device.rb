class ChangeCihaztipiToNewFromDevice < ActiveRecord::Migration[5.0]
  def change
    change_column(:devices,:cihaz_tipi,:string)
  end
end
