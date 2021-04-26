 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/timesheets", type: :request do
  
  # Timesheet. As you add validations to Timesheet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Timesheet.create! valid_attributes
      get timesheets_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      timesheet = Timesheet.create! valid_attributes
      get timesheet_url(timesheet)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_timesheet_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      timesheet = Timesheet.create! valid_attributes
      get edit_timesheet_url(timesheet)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Timesheet" do
        expect {
          post timesheets_url, params: { timesheet: valid_attributes }
        }.to change(Timesheet, :count).by(1)
      end

      it "redirects to the created timesheet" do
        post timesheets_url, params: { timesheet: valid_attributes }
        expect(response).to redirect_to(timesheet_url(Timesheet.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Timesheet" do
        expect {
          post timesheets_url, params: { timesheet: invalid_attributes }
        }.to change(Timesheet, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post timesheets_url, params: { timesheet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested timesheet" do
        timesheet = Timesheet.create! valid_attributes
        patch timesheet_url(timesheet), params: { timesheet: new_attributes }
        timesheet.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the timesheet" do
        timesheet = Timesheet.create! valid_attributes
        patch timesheet_url(timesheet), params: { timesheet: new_attributes }
        timesheet.reload
        expect(response).to redirect_to(timesheet_url(timesheet))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        timesheet = Timesheet.create! valid_attributes
        patch timesheet_url(timesheet), params: { timesheet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested timesheet" do
      timesheet = Timesheet.create! valid_attributes
      expect {
        delete timesheet_url(timesheet)
      }.to change(Timesheet, :count).by(-1)
    end

    it "redirects to the timesheets list" do
      timesheet = Timesheet.create! valid_attributes
      delete timesheet_url(timesheet)
      expect(response).to redirect_to(timesheets_url)
    end
  end
end
