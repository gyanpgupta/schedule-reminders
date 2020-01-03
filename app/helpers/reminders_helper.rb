module RemindersHelper

  def days_for_select
    Array(1..20)
  end

  def day_of_month(day)
    day.ordinalize + ' of month'
  end
end
