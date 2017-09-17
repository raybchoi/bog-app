class CreaturesController < ApplicationController
  def index
    # this says bring back the creatures where the delete_flag is false - can you use false, true, or [true, false]
    @creatures = Creature.where(delete_flag:false)
  end

  def new
    @creature = Creature.create(creature_params)
  end


  private
  # says which params are allowed and not allowed
  def create_creature
    params.require(:creature).permit(:name, :description, :link)
  end
end
