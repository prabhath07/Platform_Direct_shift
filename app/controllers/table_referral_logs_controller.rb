class TableReferralLogsController < ApplicationController
  before_action :set_table_referral_log, only: %i[ show create ]
  before_action :authenticate_user!

  # GET /table_referral_logs or /table_referral_logs.json
  def index
    @table_referral_logs = current_user.table_referral_logs
  end

  # GET /table_referral_logs/1 or /table_referral_logs/1.json
  def show
    @table_referral_log = TableReferralLog.find_by(id: params[:id])
    puts TableReferralLog.find_by(id: params[:id]).recepient_email_id
    puts "the above line is excected"
  end

  # GET /table_referral_logs/new
  def new
    @table_referral_log = TableReferralLog.new
    @table_referral_log.user_id = current_user.id
  end

  # GET /table_referral_logs/1/edit
  def edit
  end

  # POST /table_referral_logs or /table_referral_logs.json
  def create
    @table_referral_log = TableReferralLog.new(table_referral_log_params)

    respond_to do |format|
      if @table_referral_log.save
        format.html { redirect_to table_referral_log_url(@table_referral_log), notice: "Table referral log was successfully created." }
        format.json { render :show, status: :created, location: @table_referral_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_referral_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_referral_logs/1 or /table_referral_logs/1.json
  def update
    respond_to do |format|
      if @table_referral_log.update(table_referral_log_params)
        format.html { redirect_to table_referral_log_url(@table_referral_log), notice: "Table referral log was successfully updated." }
        format.json { render :show, status: :ok, location: @table_referral_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_referral_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_referral_logs/1 or /table_referral_logs/1.json
  def destroy
    @table_referral_log.destroy

    respond_to do |format|
      format.html { redirect_to table_referral_logs_url, notice: "Table referral log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_referral_log
      @table_referral_log = TableReferralLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_referral_log_params
      params.fetch(:table_referral_log, {})
    end
end
