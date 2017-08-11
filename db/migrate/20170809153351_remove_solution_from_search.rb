class RemoveSolutionFromSearch < ActiveRecord::Migration[5.0]
  def change
    remove_reference :searches, :solution, foreign_key: true
  end
end
