class AddColumnBook < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :book, :boolean, default: false
  end
end
