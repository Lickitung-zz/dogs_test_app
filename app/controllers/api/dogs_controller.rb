class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jbuilder'
  end

  def create
    @nothing = "nothing was entered here"
    @dog = Dog.new(
      breed: params[:breed] || @nothing,
      age: params[:age] || @nothing,
      color: params[:color] || @nothing
    )
    @dog.save
    render 'show.json.jbuilder'
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.breed = params[:breed] || @dog.breed
    @dog.age = params[:age] || @dog.age
    @dog.color = params[:color] || @dog.color
    @dog.save
    render 'show.json.jbuilder'
  end

  def destroy
    dog = Dog.find_by(id: params[:id])
    dog.destroy
    render json: {message: "Doggy destroyed."}
  end
end
