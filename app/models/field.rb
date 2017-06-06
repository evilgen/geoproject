class Field < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :shape, presence: true

  RGeo::ActiveRecord::SpatialFactoryStore.instance.tap do |config|
    # By default, use the GEOS implementation for spatial columns.
    config.default = RGeo::Geos.factory_generator

    # But use a geographic implementation for point columns.
    config.register(RGeo::Geographic.spherical_factory(srid: 4326), geo_type: "multi_polygon")
  end

  def shape_text
    RGeo::GeoJSON.encode(shape).to_json
  end

  def shape_text=(text)
    self.shape = RGeo::GeoJSON.decode(text, json_parser: :json)
  end
end
