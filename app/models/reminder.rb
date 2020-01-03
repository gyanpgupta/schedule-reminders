class Reminder < ApplicationRecord

  belongs_to :user

  validates_presence_of :title, :description, :day
end
