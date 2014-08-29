class Link < ActiveRecord::Base
  validates :name, :presence => true

  has_many :votes
  has_many :comments

  def self.sort_votes
    self.all.sort_by {|obj| obj.votes.count}.reverse
  end
end
