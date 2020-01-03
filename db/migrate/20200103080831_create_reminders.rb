class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :title
      t.text :description
      t.integer :day
      t.datetime :time
      t.references :user

      t.timestamps
    end
  end
end
