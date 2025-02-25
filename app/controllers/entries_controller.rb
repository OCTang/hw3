class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @place = Place.find(params[:place_id])
    if @place.nil?
      flash[:alert] = "Place not found."
      redirect_to places_path and return
    end
    @entry = @place.entries.new(entry_params)
    if @entry.save
      redirect_to place_path(@place), notice: "Entry added successfully!"
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :posted_on)
  end
end
