class Wagon < ActiveRecord::Base
  validates_uniqueness_of :name, :email
  validates :name, length: { maximum: 30 }
  validates :email, length: { maximum: 200 }
  has_one :message
end
