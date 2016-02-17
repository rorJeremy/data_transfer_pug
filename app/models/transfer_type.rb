class TransferType < ActiveRecord::Base
  has_many :destinations
  has_many :jobs, through: :destinations
end
