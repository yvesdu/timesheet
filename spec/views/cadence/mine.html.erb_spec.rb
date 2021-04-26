require 'rails_helper'

RSpec.describe "cadence/mine.html.erb", type: :view do
  it "renders mine" do
    render :template => "cadence/mine.html.erb"
    expect(rendered).to match(/mine/)
  end
end
