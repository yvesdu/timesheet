require 'rails_helper'

RSpec.describe "cadence/entry.html.erb", type: :view do

  it "renders the entry" do
    render :template => "cadence/entry.html.erb"
    expect(rendered).to match (/entry/)
  end
end
