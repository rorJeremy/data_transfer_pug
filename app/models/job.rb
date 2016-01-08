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
end