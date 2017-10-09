class ResourcesController < ApplicationController
  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
     if @resource.save
       flash[:success] = 'Resource Added successfuly.'
       redirect_to new_resource_path
     else
       flash[:danger] = 'Error occured, resource has not been added.'
       redirect_to new_resource_path
     end
  end

  private
    def resource_params
      params.require(:resource).permit(:name, :description)
    end
end

