class UvChecklistsController < ApplicationController
  before_action :set_uv_checklist, only: [:show, :edit, :update, :destroy]

  # GET /uv_checklists
  # GET /uv_checklists.json
  def index
    @uv_checklists = UvChecklist.all
  end

  # GET /uv_checklists/1
  # GET /uv_checklists/1.json
  def show
  end

  # GET /uv_checklists/new
  def new
    @uv_checklist = UvChecklist.new
  end

  # GET /uv_checklists/1/edit
  def edit
  end

  # POST /uv_checklists
  # POST /uv_checklists.json
  def create
    @uv_checklist = UvChecklist.new(uv_checklist_params)

    respond_to do |format|
      if @uv_checklist.save
        format.html { redirect_to @uv_checklist, notice: 'Uv checklist was successfully created.' }
        format.json { render :show, status: :created, location: @uv_checklist }
      else
        format.html { render :new }
        format.json { render json: @uv_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uv_checklists/1
  # PATCH/PUT /uv_checklists/1.json
  def update
    respond_to do |format|
      if @uv_checklist.update(uv_checklist_params)
        format.html { redirect_to @uv_checklist, notice: 'Uv checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @uv_checklist }
      else
        format.html { render :edit }
        format.json { render json: @uv_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uv_checklists/1
  # DELETE /uv_checklists/1.json
  def destroy
    @uv_checklist.destroy
    respond_to do |format|
      format.html { redirect_to uv_checklists_url, notice: 'Uv checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uv_checklist
      @uv_checklist = UvChecklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uv_checklist_params
      params.require(:uv_checklist).permit(:msi_cpo, :msi_cpo_completed_by, :notes, :paint_wheels, :details)
    end
end
