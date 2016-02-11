class CreateFieldsJobs < ActiveRecord::Migration
  def change
    create_table :fields_jobs, id: false do |t|
      t.references :job, index: true, foreign_key: true
      t.references :field, index: true, foreign_key: true
    end
  end
end