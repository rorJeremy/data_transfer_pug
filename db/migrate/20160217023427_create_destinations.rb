class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :job, index: true
      t.belongs_to :transfer_type, index: true
      t.string :name
      t.timestamps null: false      
    end
  end
end
