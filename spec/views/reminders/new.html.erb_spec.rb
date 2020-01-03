require 'rails_helper'

RSpec.describe "reminders/new", type: :view do
  before(:each) do
    assign(:reminder, Reminder.new(
      :title => "MyString",
      :description => "MyText",
      :day => 1,
      :time => "MyString"
    ))
  end

  it "renders new reminder form" do
    render

    assert_select "form[action=?][method=?]", reminders_path, "post" do

      assert_select "input[name=?]", "reminder[title]"

      assert_select "textarea[name=?]", "reminder[description]"

      assert_select "input[name=?]", "reminder[day]"

      assert_select "input[name=?]", "reminder[time]"
    end
  end
end
