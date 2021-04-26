require 'rails_helper'

RSpec.describe CadenceController, type: :controller do
    login_user

    describe "GET #mine" do
        it "returns http success" do
            get :mine
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET #entry" do
        it "returns http success" do
            get :entry
            expect(response).to have_http_status(:success)
        end
    end
end