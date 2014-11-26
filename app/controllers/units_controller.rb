class UnitsController < ApplicationController
  
  def index
    @units = Unit.all
  end
  
  def update
    @property = Property.find(params[:property_id])
      @unit = @property.units.find(params[:id])
    if @unit.update(unit_params)
      redirect_to @unit
    else
      render 'edit'
    end
  end

 
    def edit
      @property = Property.find(params[:property_id])
      @unit = @property.units.find(params[:id])
  end

  def create
    @property = Property.find(params[:property_id])
    @unit = @property.units.create(unit_params)
    
    
    redirect_to property_path(@property)
  end
 
 def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    
    redirect_to property_path(@unit.property)
  end
  
  def show
    @unit = Unit.find(params[:id])
  end
 
  private
def unit_params
      params.require(:unit).permit(:name, :rent, :tenant0_first_name, :tenant0_last_name, :tenant0_phone,)
      
    end
end


