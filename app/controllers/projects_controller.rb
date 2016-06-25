class ProjectsController < ApplicationController
  def index
  	@projects = Project.order(created_at: :desc).page(params[:page]).per(8)
  end

  def show
  	@project = Project.find(params[:id])
  end
 #  def new
	# @n_project = Project.new
 #  end
end
