class SachesController < ApplicationController
  before_action :set_sach, only: %i[ show edit update destroy ]

  # GET /saches or /saches.json
  def index
    @saches208 = Sach.all
  end

  # GET /saches/1 or /saches/1.json
  def show
  end

  # GET /saches/new
  def new
    @sach208 = Sach.new
  end

  # GET /saches/1/edit
  def edit
  end

  # POST /saches or /saches.json
  def create
    @sach208 = Sach.new(sach_params)

    respond_to do |format|
      if @sach208.save
        format.html { redirect_to sach_url(@sach208), notice: "Sach was successfully created." }
        format.json { render :show, status: :created, location: @sach208 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sach208.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saches/1 or /saches/1.json
  def update
    respond_to do |format|
      if @sach208.update(sach_params)
        format.html { redirect_to sach_url(@sach208), notice: "Sach was successfully updated." }
        format.json { render :show, status: :ok, location: @sach208 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sach208.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saches/1 or /saches/1.json
  def destroy
    @sach208.destroy

    respond_to do |format|
      format.html { redirect_to saches_url, notice: "Sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sach
      @sach208 = Sach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sach_params
      params.require(:sach).permit(:stt, :ma_hs, :ho_va_ten, :lop, :ma_sach, :ten_sach, :ten_tac_gia, :tu_sach, :so_bm, :ngay_muon, :ngay_tra, :so_ngay, :ghi_chu)
    end
end
