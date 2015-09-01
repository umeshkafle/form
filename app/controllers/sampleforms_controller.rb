class SampleformsController < ApplicationController

	def index
		@sampleforms = Sampleform.all
	end

	def show
		@sampleform = Sampleform.find(params[:id])
	end

	def new

	end

	def create
		@sampleform = Sampleform.new(sampleform)
		if @sampleform.save
			redirect_to sampleforms_path
		end
	end

	def edit
		@sampleform =Sampleform.find(params[:id])
		
	end

	def update
		@sampleform = Sampleform.find(params[:id])

		@sampleform.update
		
	end
	
	def destroy
		@sampleform = Sampleform.find(params[:id])
    @sampleform.destroy
    respond_to do |format|
      format.html { redirect_to sampleforms_url, notice: 'form was successfully destroyed.' }
      format.json { head :no_content }
    	end
	end


	def sampleform
		params.require(:sampleform).permit(:firstname, :lastname, :gender, :address, :country)
	end

end
