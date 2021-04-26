require 'rails_helper'

RSpec.describe "timesheets/index", type: :view do
  before(:each) do
    assign(:timesheets, [
      Timesheet.create!(
        user: nil
      ),
      Timesheet.create!(
        user: nil
      )
    ])
  end

  it "renders a list of timesheets" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
