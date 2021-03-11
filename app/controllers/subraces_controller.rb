class SubracesController < ApplicationController
  before_action :set_subrace, only: %i[ show edit update destroy ]

  # GET /subraces or /subraces.json
  def index
    @subraces = Subrace.all
  end

  # GET /subraces/1 or /subraces/1.json
  def show
  end

  # GET /subraces/new
  def new
    @subrace = Subrace.new
  end

  # GET /subraces/1/edit
  def edit
  end

  # POST /subraces or /subraces.json
  def create
    @subrace = Subrace.new(subrace_params)

    respond_to do |format|
      if @subrace.save
        format.html { redirect_to @subrace, notice: "Subrace was successfully created." }
        format.json { render :show, status: :created, location: @subrace }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subrace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subraces/1 or /subraces/1.json
  def update
    respond_to do |format|
      if @subrace.update(subrace_params)
        format.html { redirect_to @subrace, notice: "Subrace was successfully updated." }
        format.json { render :show, status: :ok, location: @subrace }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subrace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subraces/1 or /subraces/1.json
  def destroy
    @subrace.destroy
    respond_to do |format|
      format.html { redirect_to subraces_url, notice: "Subrace was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subrace
      @subrace = Subrace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subrace_params
      params.require(:subrace).permit(:index, :name, :race, :desc, :ability_bonuses, :starting_proficiencies, :languages, :traits, :url)
    end
end
