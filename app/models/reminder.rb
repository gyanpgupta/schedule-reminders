class Reminder < ApplicationRecord

  belongs_to :user

  validates_presence_of :title, :description, :month_day, :month_direction

  enum month_direction: [:start_of_month, :end_of_month]

  def month_schedule_date
    if month_direction == "start_of_month"
      start_date_of_month + (month_day - 1).days
    else
      end_date_of_month.day - (month_day - 1).days
    end
  end

  def start_date_of_month
    Date.today.beginning_of_month
  end

  def end_date_of_month
    Date.today.end_of_month
  end

  def scheduled?
    t = time
    d = month_schedule_day
    new_time = DateTime.new(d.year, d.month, d.day, t.hour, t.min)
    DateTime.now > (new_time - 30.min) && DateTime.now < new_time
  end

  def month_schedule_day
    if month_direction == "start_of_month"
      month_day
    else
      days_in_month(Date.today.month) - month_day
    end
  end
end
