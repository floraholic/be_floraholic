class PlantPoro
	attr_reader :id, :year_discovered, :name, :scientific_name, :family_name,
							:status, :rank, :genus_id, :image_url
	def initialize(attributes)
		@id = attributes[:id]
		@year_discovered = attributes[:year]
		@name = attributes[:common_name]
		@scientific_name = attributes[:scientific_name]
		@family_name = attributes[:family_common_name]
		@status = attributes[:status]
		@rank = attributes[:rank]
		@genus_id = attributes[:genus_id]
		@image_url = attributes[:image_url]
	end
end