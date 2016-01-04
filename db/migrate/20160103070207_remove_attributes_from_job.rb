class RemoveAttributesFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :attribute_albumId
    remove_column :jobs, :attribute_id
    remove_column :jobs, :attribute_title
    remove_column :jobs, :attribute_url
    remove_column :jobs, :attribute_thumbnailUrl       
  end
end
