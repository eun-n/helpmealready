class CreaturesController < ApplicationController
  def index
      @creatures = Creature.all
  end

  def create
    creature = Creature.create(creature_params)
    redirect_to creatures_path creature
  end

  def new
      @creature = Creature.new
      @tags = Tag.all
  end

  def edit
    @creature = Creature.find params[:id]
    @tags = Tag.all
  end

  def show
    @creature = Creature.find params[:id]
  end

  def update
    c = Creature.find params[:id]
    c.update creature_params
    # update_tags(c)
    redirect_to creatures_path
  end

  def destroy
    Creature.find(params[:id]).destroy
    redirect_to creatures_path
  end

  private

  def creature_params
    params.require(:creature).permit(:id, :description, :name, tag_ids: [])
  end

end
