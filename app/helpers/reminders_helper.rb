module RemindersHelper

  def days_for_select
    Array(1..(Time.days_in_month Date.today.month))
  end
end
