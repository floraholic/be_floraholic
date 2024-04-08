class PlantsFacade
	def all_plants(page_num)
		service = PlantsService.new
		plants_hash = service.get_all_plants(page_num)
		plant_objs = poro_factory(plants_hash)
	end

	def poro_factory(plants_hash)
		plants_hash[:data].map do |plant|
			PlantPoro.new(plant)
		end
	end
end