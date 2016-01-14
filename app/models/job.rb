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
    fields = self.fields.to_a
    headers = []
    fields.each do |field|
      headers << field.name
    end
    job_data = self.fetch

    CSV.open("file.csv", "wb", :write_headers=> true, :headers => headers) do |csv|
      puts "creating a csv file"
      job_data.each do |blob|
        tmp_array = []
        fields.each do |field|
          tmp_array << blob[field.name]
        end
        csv << tmp_array
      end
    end
  end

  def create_txt
    puts "creating a txt file"
    fields = self.fields.to_a
    headers = []
    fields.each do |field|
      headers << field.name
    end
    
    job_data = self.fetch
    File.open('file.txt', 'a+') do |file|
      file.puts headers.join(", ")
      job_data.each do |blob|
        tmp_array = []
        fields.each do |field|
          tmp_array << blob[field.name]
        end
        file.puts tmp_array.join(", ") #will return a string without the array brackets, separating the elements with whatever is passed inside join
      end
    end
  end

end