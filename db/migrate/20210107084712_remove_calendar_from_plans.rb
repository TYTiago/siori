class RemoveCalendarFromPlans < ActiveRecord::Migration[6.0]
  def change
    remove_column :plans, :calendar, :date
  end
end
