class CodesController < ApplicationController
  before_action :set_code, only:[:edit,:show,:update,:destroy]
   before_action :authenticate_user!

  def index
  	@codes = Code.all
  end

  def edit

  end

  def new
  	@code = Code.new
  end

  def create
  	@code = Code.new(set_params)
  end

  def show
  end

  def update
  	@code = Code.update(set_params)
  end

  def destroy
  end

  private 
  	def set_code
  		@code = Code.find_by(params[:id])
  	end

  	def set_params
  		params.require(:code).permit(:solution)
  	end
end
