class DeleteIdFromRider < ActiveRecord::Migration[5.1]
  def change
    remove_column :riders, :rollercoaster_id
  end
end
