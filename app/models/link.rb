class Link < ActiveRecord::Base
  validates :name, :presence => true

  has_many :votes

  def self.sort_votes
    self.all.sort_by {|obj| obj.votes.count}.reverse
  #   array = []
  #   Link.all.each do |link|
  #     array << link.votes.count
  #   end
  #   array.sort
  # end
end
end
