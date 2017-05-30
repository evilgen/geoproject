class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.multi_polygon :shape, geographic: true

      t.timestamps
    end
  end
end
