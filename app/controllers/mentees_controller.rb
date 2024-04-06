class MenteesController < ApplicationController
  before_action :set_mentee, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @mentees = Mentee.all
  end

  def show
  end

  def new
    @mentee = Mentee.new
  end

  def edit
  end

  def create
    @mentee = Mentee.new(mentee_params)

    respond_to do |format|
      if @mentee.save
        format.html { redirect_to mentee_url(@mentee), notice: "Mentee was successfully created." }
        format.json { render :show, status: :created, location: @mentee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mentee.update(mentee_params)
        format.html { redirect_to mentee_url(@mentee), notice: "Mentee was successfully updated." }
        format.json { render :show, status: :ok, location: @mentee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mentee.destroy!

    respond_to do |format|
      format.html { redirect_to mentees_url, notice: "Mentee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentee
      @mentee = Mentee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentee_params
      params.fetch(:mentee, {}).permit(:name, :email, :bio)
    end
end
