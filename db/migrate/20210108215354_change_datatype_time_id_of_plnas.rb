class ChangeDatatypeTimeIdOfPlnas < ActiveRecord::Migration[6.0]
  def change
    change_column :plans, :time_id, :time
  end
end
