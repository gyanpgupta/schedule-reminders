class Reminder < ApplicationRecord

  belongs_to :user

  validates_presence_of :title, :description, :month_day, :month_direction

  enum month_direction: [:start_of_month, :end_of_month]

  def month_schedule_day
    if month_direction == "start_of_month"
      day_by_start_of_month
    else
      day_by_end_of_month
    end
  end

  def day_by_start_of_month
    month_day
  end

  def day_by_end_of_month
    days_in_month(Date.today.month) - month_day
  end
end
