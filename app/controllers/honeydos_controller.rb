class HoneydosController < ApplicationController


  def index
    proj = Honeydo.all
    render json: proj, status: 200
  end

  def new
    np = Honeydo.new
    render json: np, status: 200
  end

  def show
    if Honeydo.exists?(params[:id])
      proj = Honeydo.find(params[:id])
      render json: proj, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def create
    #For create to work, we must *require* that a parameter is sent with the name 'project'
    if params[:project].nil? || params[:project].empty?
      err_msg = "The 'project' parameter was empty or not found"
      render json: { error_msg: err_msg }.to_json, status: 422
    else
      # tweet = Tweet.create(project: params[:project])
      task = Honeydo.new
      task.project = params[:project]
      task.save
      render json: task.to_json, status: 201
    end
  end

  def destroy
    if Honeydo.exists?(params[:id])
      task = Honeydo.find(params[:id])
      task.destroy
      render json: { message: "Project Deleted Successfully." }, status: 200
    else
      render json: { error_msg: 'No project found with that ID', id: params[:id] }.to_json, status: 404
    end
  end



end
