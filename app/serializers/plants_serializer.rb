class PlantsSerializer
	include JSONAPI::Serializer

	attributes :id, :year_discovered, :name, :scientific_name, :family_name, :status, :rank, :genus_id, :image_url
end