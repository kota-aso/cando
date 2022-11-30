class CandosController < ApplicationController
  def index
    @candos = Cando.all
  end

end
