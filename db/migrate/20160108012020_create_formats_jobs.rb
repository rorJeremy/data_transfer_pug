class CreateFormatsJobs < ActiveRecord::Migration
  def change
    create_table :formats_jobs, id: false do |t|
      t.references :job, index: true, foreign_key: true
      t.references :format, index: true, foreign_key: true
    end
  end
end
