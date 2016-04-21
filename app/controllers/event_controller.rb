class EventController < ApplicationController
  def index
  	event = Eventdate.all
  	#event = Eventdate.all
  	render json:event

  end
  def new
  	@event = Eventdate.new
  end
  def create
   p '.................'
  	@event = Eventdate.new(eventdate_params)
  	@event.save
  	redirect_to root_path
   end
   private

   def eventdate_params 
   	 params.require(:eventdate).permit(:title,:start,:end)
   	end
 end  