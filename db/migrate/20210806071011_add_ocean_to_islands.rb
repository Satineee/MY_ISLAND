class AddOceanToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :ocean, :string
  end
end
