class ProjectsController < ApplicationController
  def new
    
  end
  
  def create
    proj = Project.new(params.require(:project).permit(:title, :description, :owner, :deadline))
    proj.save
    redirect_to proj
  end
   
	def show
  	@proj = Project.find(params[:id])
  end

  def index
    @proj = Project.all
  end
end
