class RemoveTimeIdFromPlans < ActiveRecord::Migration[6.0]
  def change
    remove_column :plans, :time_id, :time
  end
end
