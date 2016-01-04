class RemoveAttributesFromFieldsJobs < ActiveRecord::Migration
  def change
    remove_column :fields_jobs, :attribute_id
  end
end
