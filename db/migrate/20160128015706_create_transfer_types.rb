class CreateTransferTypes < ActiveRecord::Migration
  def change
    create_table :transfer_types do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
