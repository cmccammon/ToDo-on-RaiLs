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
end
