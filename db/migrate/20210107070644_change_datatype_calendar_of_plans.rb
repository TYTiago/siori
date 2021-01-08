class ChangeDatatypeCalendarOfPlans < ActiveRecord::Migration[6.0]
  def change
    change_column :plans, :calendar, :date
  end
end
