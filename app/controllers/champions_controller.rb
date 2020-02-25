class ChampionsController < ApplicationController

    before_action :find_champ, only: [:show, :edit, :destroy, :update]
    def index
      @champions = Champion.all
    end

    def show
    end

    def new
      @champion = Champion.new
    end

    def create
      new_champ = Champion.create(champion_params)
      redirect_to champion_path(new_champ)
    end

    def edit

    end

    def update
      
    end

    def destroy
      @champion.destroy
      redirect_to champions_path
    end

    private

    def find_champ
      @champion = Champion.find(params[:id])
    end

    def champion_params
      params.require(:champion).permit(:name, :description, :role)
    end
  end