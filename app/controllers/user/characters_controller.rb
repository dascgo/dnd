class User::CharactersController < User::BaseController


  def index
  end


  def new
  end


  def create
    @character = current_user.characters.create(character_params)
    @character.create_abilities!
    redirect_to user_character_path(@character)
  end


  def show
    @character = current_user.characters.find(params[:id])
  end


  private


  def character_params
    params.require(:character).permit(:name, :description)
  end


end