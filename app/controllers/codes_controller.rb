class CodesController < ApplicationController
  before_action :set_code, only:[:edit,:show,:update,:destroy]
   before_action :authenticate_user!


  def index
  	@codes = Code.all
  end

  def edit

  end

  def new
    @p = Question.find(params[:question_id])
    @code = @p.codes.build
    cookies[:p_id] = @p.id

    

  end

  def create
  	@code = Code.create(set_params)
    @code.user_id = current_user.id
    @code.question_id = cookies[:p_id]
    @code.save
    redirect_to controller: 'questions' , action: 'show' , id: cookies[:p_id]
    

  end

  def show
    @question = Question.find(params[:question_id])

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
