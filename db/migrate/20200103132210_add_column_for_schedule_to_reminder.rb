class AddColumnForScheduleToReminder < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :month_day, :integer
    add_column :reminders, :month_direction, :integer, default: 0
  end
end
