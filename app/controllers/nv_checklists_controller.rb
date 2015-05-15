class NvChecklistsController < ApplicationController
  before_action :set_nv_checklist, only: [:show, :edit, :update, :destroy]

  # GET /nv_checklists
  # GET /nv_checklists.json
  def index
    @nv_checklists = NvChecklist.all
  end

  # GET /nv_checklists/1
  # GET /nv_checklists/1.json
  def show
  end

  # GET /nv_checklists/new
  def new
    @nv_checklist = NvChecklist.new
  end

  # GET /nv_checklists/1/edit
  def edit
  end

  # POST /nv_checklists
  # POST /nv_checklists.json
  def create
    @nv_checklist = NvChecklist.new(nv_checklist_params)

    respond_to do |format|
      if @nv_checklist.save
        format.html { redirect_to @nv_checklist, notice: 'Nv checklist was successfully created.' }
        format.json { render :show, status: :created, location: @nv_checklist }
      else
        format.html { render :new }
        format.json { render json: @nv_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nv_checklists/1
  # PATCH/PUT /nv_checklists/1.json
  def update
    respond_to do |format|
      if @nv_checklist.update(nv_checklist_params)
        format.html { redirect_to @nv_checklist, notice: 'Nv checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @nv_checklist }
      else
        format.html { render :edit }
        format.json { render json: @nv_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nv_checklists/1
  # DELETE /nv_checklists/1.json
  def destroy
    @nv_checklist.destroy
    respond_to do |format|
      format.html { redirect_to nv_checklists_url, notice: 'Nv checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nv_checklist
      @nv_checklist = NvChecklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nv_checklist_params
      params.require(:nv_checklist).permit(:stock_in, :pdi, :pdi_completed_by, :notes, :ready_to_show, :vehicle_id)
    end
end
