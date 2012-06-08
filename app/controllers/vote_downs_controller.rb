class VoteDownsController < ApplicationController
  before_filter :get_song

  def create
    @vote = @song.vote_down
    redirect_to songs_url
  end

  private

  def get_song
    @song = Song.find params[:song_id]
  end
end
