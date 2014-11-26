class PropertiesController < ApplicationController
  def new
    @property = current_user.properties.build
  end
  
  

  def create
    
    @property = current_user.properties.build(property_params)
   
    @property.save
    redirect_to @property
  end
  
  def index
    @properties = Property.all
  end

  
    def edit
      @property = current_user.properties.find(params[:id])
  end

  
  
  def show
    @property = current_user.properties.find(params[:id])
  end

  def update
    @property = current_user.properties.find(params[:id])
    if @property.update(property_params)
      redirect_to @property
    else
      render 'edit'
    end
  end




  def destroy
    @property = Property.find(params[:id])
    @property.destroy
   
    redirect_to properties_path
  end

private
def property_params
      params.require(:property).permit(:street_address, :city, :state, :zip, :image)
      
    end
end
