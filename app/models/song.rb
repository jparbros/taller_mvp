class Song < ActiveRecord::Base
  attr_accessible :genere, :name, :url, :user_id


  #
  # Relations
  #
  has_many :votes

  def votes_count
    votes.sum(:tendency)
  end

  def vote_down
    self.votes.create(tendency: -1)
  end

  def vote_up
    self.votes.create(tendency: 1)
  end
end
