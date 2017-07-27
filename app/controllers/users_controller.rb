class UsersController < ApplicationController
  before_action :select_user, only: [:show, :edit, :update, :destroy]


  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit


  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      if @user.save
        login(@user)
        redirect_to user_path(@user), notice: 'Aramıza hoş geldin!'
      else
        render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to current_user, notice: 'Profiliniz başarıyla güncellenmiştir.' }
        format.json { render :show, status: :ok, location: current_user }
      else
        format.html { redirect_to user_path(current_user), notice: 'Profil güncelleme başarısız.'  }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    logout
    @user.destroy
    redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit!
    end

    def select_user
    @user = User.find_by_email(params[:id])
  end
end
