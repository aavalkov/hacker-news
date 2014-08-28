class Link < ActiveRecord::Base
  validates :name, :presence => true

  has_many :votes
end
