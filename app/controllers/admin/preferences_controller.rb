class Admin::PreferencesController < ApplicationController

  def index

  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)

    if @preference.save
      redirect_to @preference
    else
      render :new
    end
  end

  def edit
    
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end

end
