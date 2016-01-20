class IndexController < ApplicationController
  def search
  end

  def show
@results= Jap.search(params[:search])
  end
end
