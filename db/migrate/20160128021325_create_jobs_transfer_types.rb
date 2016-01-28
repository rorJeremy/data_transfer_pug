class CreateJobsTransferTypes < ActiveRecord::Migration
  def change
    create_table :jobs_transfer_types, id: false do |t|
      t.references :transfer_type, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
    end
  end
end
