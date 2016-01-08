class CreateAttributesJobs < ActiveRecord::Migration
  def change
    create_table :attributes_jobs do |t|
      t.references :job, index: true, foreign_key: true
      t.references :attribute, index: true, foreign_key: true
    end
  end
end
