class CreaturesController < ApplicationController
  # you only need to use the @ if you are taking that value and using it somehwere else (on another page)


  def index
    # this says bring back the creatures where the delete_flag is false - can you use false, true, or [true, false]
    @creatures = Creature.where(delete_flag:false)
  end

    # this is saying that when this method is hit the form will call a new creature to be created which is going to be the form with the correct URL structure etc.
  def new
    @creature = Creature.new
  end

    # actually creates and save the bog
  def create
    creature = Creature.create(creature_params)
    if creature.save
      redirect_to creatures_path
    end
  end

    # show one bog at a time
  def show
    @creature = Creature.find(params[:id])
  end

  private
  # says which params are allowed and not allowed
  def creature_params
    params.require(:creature).permit(:name, :description, :link)
  end
end
