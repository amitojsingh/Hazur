class IndexController < ApplicationController
  def search
  end

  def show
@str= RegWord.new.search(params[:search])
puts "#{@str}"
@results=Jap.query_find(@str)
puts "#{@results}"
  end
end
