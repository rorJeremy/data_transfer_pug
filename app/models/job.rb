require "csv"

class Job < ActiveRecord::Base
  include HTTParty

  has_and_belongs_to_many :fields
  has_and_belongs_to_many :formats

  def fetch
    response = HTTParty.get("#{self.source}")
    # Example below if you wanted to query the response for something.
    # response.select {|resp| resp["id"] < 35 }
    return JSON.parse(response.body)
  end

  def create_csv
    CSV.open("file.csv", "wb") do |csv|
      puts "grabbing the fields"
      fields = self.fields.to_a
      puts "grabbing the data"
      job_data = self.fetch
      puts "iterating through the data"
      job_data.each do |blob|
        tmp_array = []
        fields.each do |field|
          tmp_array << blob[field.name]
        end
        csv << tmp_array
      end
    end
  end

end