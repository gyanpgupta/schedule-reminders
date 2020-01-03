require 'rails_helper'

RSpec.describe "reminders/index", type: :view do
  before(:each) do
    assign(:reminders, [
      Reminder.create!(
        :title => "Title",
        :description => "MyText",
        :day => 2,
        :time => "Time"
      ),
      Reminder.create!(
        :title => "Title",
        :description => "MyText",
        :day => 2,
        :time => "Time"
      )
    ])
  end

  it "renders a list of reminders" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
