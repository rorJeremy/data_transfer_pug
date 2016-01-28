class CreateTransferTypes < ActiveRecord::Migration
  def change
    create_table :transfer_types do |t|

      t.timestamps null: false
    end
  end
end
