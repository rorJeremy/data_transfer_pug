class RenameAttributesToFields < ActiveRecord::Migration
  def change
    rename_table :attributes, :fields
  end
end
