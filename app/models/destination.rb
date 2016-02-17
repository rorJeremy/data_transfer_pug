class Destination < ActiveRecord::Base
  belongs_to :transfer_type
  belongs_to :job
end
