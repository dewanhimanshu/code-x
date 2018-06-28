class QuestionsController < ApplicationController
	 before_action :set_question, only:[:edit,:show,:update,:destroy]
	 before_action :authenticate_user!, except:[:index]
	 before_action :check_user , only:[:edit,:update,:destroy]

  def index
  	@programs = Question.all
  end

  def edit

  end

  def new
  	@program = Question.new
  end

  def create
  	@program = Question.create(set_params)
  	@program.user_id = current_user.id
  	@program.save
  	redirect_to action: 'show' , id: @program.id 

  end

  def show
  	@codes = Code.all
  end

  def update
  	
  	@program = @program.update(set_params)
    redirect_to action: 'show' , id: params[:id]  
  end

  def destroy
  		
  end

  private 
  	def set_question
  		@program = Question.find(params[:id])
 
  	end

  	def set_params
  		params.require(:question).permit(:program,:user_id)
  	end

  	def check_user
  		if @program.user_id != current_user.id
  				return redirect_to action: 'index'
        end
  	end
end
