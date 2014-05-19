class NetflixController < ApplicationController

def test
end

def search
	@country = params[:key]
	end 
	
	def index
    @country = country.all
	@letter = params[:letter]

    respond_to do |format|
      test.html # index.html.erb
      data.json { render json: @country }
	  
    end
  end

end
