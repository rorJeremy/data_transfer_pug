class AddFieldsToFieldsJobs < ActiveRecord::Migration
  def change
    add_reference :fields_jobs, :field, index: true, foreign_key: true
  end
end
