class RenameAttributesJobsToFieldsJobs < ActiveRecord::Migration
  def change
    rename_table :attributes_jobs, :fields_jobs
  end
end
