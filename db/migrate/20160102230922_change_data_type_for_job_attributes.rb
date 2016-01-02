class ChangeDataTypeForJobAttributes < ActiveRecord::Migration
  def change
    remove_column :jobs, :attribute_albumId
    remove_column :jobs, :attribtue_id
    remove_column :jobs, :attribute_title
    remove_column :jobs, :attribute_url
    remove_column :jobs, :attribute_thumbnailUrl               
    add_column :jobs, :attribute_albumId, :boolean
    add_column :jobs, :attribute_id, :boolean
    add_column :jobs, :attribute_title, :boolean
    add_column :jobs, :attribute_url, :boolean
    add_column :jobs, :attribute_thumbnailUrl, :boolean
  end
end