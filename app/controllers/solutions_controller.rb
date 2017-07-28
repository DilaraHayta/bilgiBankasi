class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :edit, :update, :destroy]

  # GET /devices
  # GET /devices.json
  def index
    @solutions = Solution.all
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
  end

  # GET /devices/new
  def new
    @solution = Solution.new
  end

  # GET /devices/1/edit
  def edit
  end

  # POST /devices
  # POST /devices.json
  def create
    @solution = Solution.new(solution_params)

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @solution }
      else
        format.html { render :new }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devices/1
  # PATCH/PUT /devices/1.json
  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: 'solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @solution }
      else
        format.html { render :edit }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to solutions_url, notice: 'solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solution_params
      params.require(:solution).permit!
    end
end
