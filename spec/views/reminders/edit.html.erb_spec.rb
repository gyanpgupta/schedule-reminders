require 'rails_helper'

RSpec.describe 'reminders/edit', type: :view do
  before(:each) do
    @reminder = assign(:reminder, create(:reminder))
  end

  it 'renders the edit reminder form' do
    render

    assert_select 'form[action=?][method=?]', reminder_path(@reminder), 'post' do
      assert_select 'input[name=?]', 'reminder[title]'
      assert_select 'textarea[name=?]', 'reminder[description]'
      assert_select 'select[name=?]', 'reminder[month_day]'
      assert_select 'input[name=?]', 'reminder[time]'
    end
  end
end
