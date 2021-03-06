# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Job.all.each do |job|
#   job.fields.destroy_all
# end

Job.delete_all
Field.delete_all

first_job = Job.create!(source: "http://jsonplaceholder.typicode.com/photos")

Field.create!(name: "albumId")
Field.create!(name: "id")
Field.create!(name: "title")
Field.create!(name: "url")
Field.create!(name: "thumbnailUrl")

Field.all.each do |field|
  first_job.fields << field
end

Format.create!(name: "Csv")
Format.create!(name: "Txt")

Format.all.each do |format|
  first_job.formats << format
end

TransferType.create!(name: "Email")
TransferType.create!(name: "FTP")

TransferType.all.each do |transfer_type|
  first_job.transfer_types << transfer_type
end



