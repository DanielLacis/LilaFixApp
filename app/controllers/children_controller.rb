class ChildrenController < ApplicationController
  def show
    @child = Child.find(params[:id])
    render :show
  end

  def new
    @child = Child.new()
    render :new
  end

  def create
    @child = Child.new()
    build_params = child_params
    build_params[:user_id] = current_user.id
    build_photo_params = {}
    if @child.update(child_params)
      build_photo_params[:photo] = params[:child][:photo]
      build_photo_params[:imageable_type] = 'Child'
      build_photo_params[:imageable_id] = @child.id
      @photo = Photo.create(build_photo_params)
      redirect_to child_path(@child)
    else
      redirect_to childs_path
    end
  end

  private

  def child_params
    params.require('child').permit(:name, :description)
  end
end