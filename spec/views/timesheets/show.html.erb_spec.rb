require 'rails_helper'

RSpec.describe "timesheets/show", type: :view do
  before(:each) do
    @timesheet = assign(:timesheet, Timesheet.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
