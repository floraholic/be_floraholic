class PlantsService
	def get_all_plants(page_num)
		page_num ||= 1
		get_url("/api/v1/plants?page=#{page_num}")
	end

	def get_url(url)
		response = conn.get(url)
		JSON.parse(response.body, symbolize_names: true)
	end

	def conn
		Faraday.new(url: "https://trefle.io") do |f|
			f.headers["Content-Type": "application/json"]
			f.params["token"] = Rails.application.credentials.trefle[:key]
		end
	end

	  #   def get_all_plants(page_num)
		# 	page_num ||= 1
		# 	r = HTTParty.get(
		# 		"https://trefle.io/api/v1/plants?page=#{page_num}",
		# 		query: {
		# 			"token": Rails.application.credentials.trefle[:key],
		# 			"page": page_num
		# 		}
		# 	)
		# 	res = r.parsed_response["data"]
			
		# 	symbolized_response = res.map do |plant|
		# 		new_obj = {}
		# 		plant.map do |prop, val|
		# 			s = prop.to_sym
		# 			new_obj[s] = val
		# 		end
		# 		new_obj
		# 	end
		# 	symbolized_response
		# end
end