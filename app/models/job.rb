class Job < ActiveRecord::Base
  include HTTParty

  def fetch
    response = HTTParty.get("#{self.source}")
    # Example below if you wanted to query the response for something.
    # response.select {|resp| resp["id"] < 35 }
    return JSON.parse(response.body)
  end
end