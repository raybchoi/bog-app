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
      redirect_to creature_path(creature)
    end
  end

    # show one bog at a time
  def show
    # first find the creature - if the creature delete_flage == true then creature comes back as nil and then redirect to home main paige else show the single creature page
    creature = Creature.find_by(id: params[:id], delete_flag:false)
    if creature.nil?
      redirect_to creatures_path
    else
      @creature = creature
    end
  end

  # able to find the bog to edit and show the form with the info
  def edit
    @creature = Creature.find(params[:id])
  end

  # on submit ruby knows that edit is going to a patch route - the route tells which param to use as the ID. With that param it finds the creature. Once it finds the creature it can then update it and then save it.
  def update
    creature = Creature.find(params[:id])
    creature.update_attributes(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  # be able to change the delete delete flag to true so you dont remove the customer data
  def delete
    creature = Creature.find(params[:id])
    creature.update_attribute(:delete_flag, true)
    # creature.destroy
    redirect_to creatures_path
  end

  private
  # says which params are allowed and not allowed
  def creature_params
    params.require(:creature).permit(:name, :description, :link)
  end
end
