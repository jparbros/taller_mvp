class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new params[:song]
    @song.user_id = current_user.id
    if @song.save
      redirect_to songs_url
    else
      render :new
    end
  end

end
