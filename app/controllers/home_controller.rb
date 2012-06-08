class HomeController < ApplicationController

  def index
    @variable_inst = params[:calificacion_uno]
  end
end
