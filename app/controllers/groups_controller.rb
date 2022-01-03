class GroupsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @list = List.new

    @groups = Group.all
  end

  def show
    @list = List.new
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    binding.pry
    @group.owner_id = current_user.id

    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    if @group.update(params[:id])
      redirect_to groups_path
    else
      render "edit"
    end
  end

  def destroy
    @group = Group.find(params[:group_id])
    if @group.destroy
      redirect_to groups_path
    end
  end
  private

  def group_params
    params.require(:group).permit(:name, :introduction, :image)
  end

  # def ensure_correct_user
  #   @group = Group.find(params[:id])
  #   unless @group.owner_id == current_user.id
  #     redirect_to groups_path
  #   end
  # end




end
