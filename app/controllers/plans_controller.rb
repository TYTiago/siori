class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
     @plan = Plan.new
  end

  def create
     @plan = Plan.new(plan_params)
     if @plan.save
        redirect_to root_path
      else
        render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @comment = Comment.new
    @comments = @plan.comments.includes(:user)
  end


  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    plan = Plan.find(params[:id])
    plan.update(plan_params)
  end

  def destroy
    plan = Plan.find(params[:id])
    plan.destroy
  end
  
  def search
    redirect_to root_path if params[:keyword] == ""
    @plans = Plan.search(params[:keyword])
  end


end
private
  def plan_params
    params.require(:plan).permit(:title, :place, :time_id, :user_id, :start_time, :list, :image).merge(user_id: current_user.id)
  end