class Vote < ActiveRecord::Base
  attr_accessible :song_id, :tendency

  #
  # relations
  #

  belongs_to :song
end
