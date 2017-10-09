class ResourcesController < ApplicationController

  def index
    @resources = Resource.where("is_approved = ?", true)
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
     if @resource.save
       flash[:success] = 'Resource Added successfuly.'
       redirect_to new_resource_path
       name = params[:resource][:name]
       description = params[:resource][:description]
       ContactMailer.resource_email(name, description).deliver
       flash[:success] = "Message sent."
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

