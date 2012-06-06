class SongsController < ApplicationController

  def new
    @song = Song.build
  end


end
