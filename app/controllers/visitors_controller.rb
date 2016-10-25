class VisitorsController < ApplicationController
  def index
    if (params[:sort] == "alphabetical")
    	@products = Product.all.alphabetical
    else
    	@products = Product.all
    end	
  end
end
