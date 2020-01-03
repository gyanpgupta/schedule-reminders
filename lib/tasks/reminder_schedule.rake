# frozen_string_literal: true

namespace :reminder_schedule do
  desc 'Send reminder emails to users'
  task send_email: :environment do
    Reminder.on_current_time.each do |reminder|
      if reminder.scheduled?
        ReminderMailer.send_reminder_mail(reminder.user_id, reminder.id).deliver_now
      end
    end
  end
end
