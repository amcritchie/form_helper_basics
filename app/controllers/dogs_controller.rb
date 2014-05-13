class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_parameters)
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def dog_parameters
    params.require(:dog).permit!
  end
end