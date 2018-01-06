class PortfoliosController < ApplicationController
def index
	@portfolios_item =Portfolio.all
	
end

def new
	@portfolios_item =Portfolio.new
end

def create
	@Portfolios_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @Portfolios_item.save
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
end

def edit
	@portfolios_item =Portfolio.find(params[:id])
end

def update
	@portfolios_item =Portfolio.find(params[:id])	
		respond_to do |format|
			if @portfolios_item.update(params.require(:portfolio).permit(:title,:subtitle,:body))
				format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

def show
	@portfolios_item =Portfolio.find(params[:id])
end

def destroy

	#perform the lookup
 	@portfolios_item =Portfolio.find(params[:id])
 	#destroy/delete the record
 	@portfolios_item.destroy
 	
    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
end

end








	
		
			
		
			
		
	






   

