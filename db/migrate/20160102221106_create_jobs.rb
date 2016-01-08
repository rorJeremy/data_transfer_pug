class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :source
      t.string :attribute_albumId
      t.integer :attribtue_id
      t.string :attribute_title
      t.string :attribute_url
      t.string :attribute_thumbnailUrl
      t.timestamps
    end
  end
end
