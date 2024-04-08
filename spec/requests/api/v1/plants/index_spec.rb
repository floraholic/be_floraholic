require "rails_helper"

RSpec.describe "Api::V1::Plants", :vcr, type: :request do
	it "returns all plants in the database (20 plants/page)" do
		page_num = 1
		
		get "/api/v1/plants", headers: { "Content-Type": "application/json"},
			params: { "token": Rails.application.credentials.trefle[:key],
			page: page_num ||= 1
		}
		expect(response).to have_http_status(200)
		expect(response).to have_http_status(:ok)
		expect(response).to be_successful
		expect(response.status).to eq(200)
	end
end 