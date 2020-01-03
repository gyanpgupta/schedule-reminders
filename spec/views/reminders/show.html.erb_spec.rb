require 'rails_helper'

RSpec.describe "reminders/show", type: :view do
  before(:each) do
    @reminder = assign(:reminder, Reminder.create!(
      :title => "Title",
      :description => "MyText",
      :day => 2,
      :time => "Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Time/)
  end
end
