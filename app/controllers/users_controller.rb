class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :destroy, :update]
  
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end 

  def create
    new_user = User.create(user_params)
    redirect_to user_path(new_user)
  end

  def destroy
    user.destroy
    redirect_to users_path
  end

  def edit
    @characters = @user.champions.name
  end

  def update
    ChampionOwned.create_or_find_by(:user_id => params[:id], :champion_id => params[:user][:champions][:champion_id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :rank)
  end
end

# <ActionController::Parameters
# {
#     "_method"=> "patch", 
#     "authenticity_token"=> "d5wSo/hhcGU3vBrzyXRFP2tIy8FIFXp/K46Og+ZBnIipVdY4yqshoGA3+MqMBfLPPhDKeNil5lcmSEzBDmFjOQ==",
#     "user"=>
#         {"username"=>"Alan", 
#         "champions"=>
#             {"champion_id"=>"12"}
#         }, 
#     "commit"=>"Update User", 
#     "controller"=>"users", 
#     "action"=>"update", 
#     "id"=>"8"} 
        
