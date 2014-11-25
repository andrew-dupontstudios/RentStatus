class UnitsController < ApplicationController
  
  def create
    @property = Property.find(params[:property_id])
    @unit = @property.units.create(unit_params)
    
    
    redirect_to property_path(@property)
  end
 
#  private
 #   def unit_params
 #     params.require(:unit).permit(:tenant0_first_name, :name, :rent, :tenant0_last_name, :tenant0_phone, :tenant0_email, :tenant1_first_name, :tenant1_last_name, :tenant1_phone, :tenant1_email, :tenant2_first_name, :tenant2_last_name, :tenant2_phone, :tenant2_email, :tenant3_first_name, :tenant3_last_name, :tenant3_phone, :tenant3_email, :image0, :image1, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :image11,)
#    end
  private
def unit_params
      params.require(:unit).permit(:name, :rent, :tenant0_first_name)
      
    end
end


