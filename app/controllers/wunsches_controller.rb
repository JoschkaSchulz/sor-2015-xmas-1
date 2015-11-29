class WunschesController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :edit, :destroy]
  before_action :set_wunsch, only: [:show, :edit, :update, :destroy]

  # GET /wunsches
  def index
    @wunsches = Wunsch.all
  end

  # GET /wunsches/1
  def show
  end

  # GET /wunsches/new
  def new
    @wunsch = Wunsch.new
  end

  # GET /wunsches/1/edit
  def edit
    wunsch = Wunsch.find(params[:id])
    unless current_user.wunsches.include?(wunsch)
      redirect_to wunsches_path, notice: 'You can only edit your own Wunsches.'
    end
  end

  # POST /wunsches
  def create
    @wunsch = Wunsch.new(wunsch_params)
    @wunsch.u_id = current_user.id
    if  @wunsch.preis == nil
      @wunsch.preis = 0
    end
    if @wunsch.save
      redirect_to @wunsch, notice: 'Wunsch was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wunsches/1
  def update
    if @wunsch.update(wunsch_params)
      redirect_to @wunsch, notice: 'Wunsch was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wunsches/1
  def destroy
    @wunsch.destroy
    redirect_to wunsches_url, notice: 'Wunsch was successfully destroyed.'
  end

  # GET /wunsches/send_wishlist
  def send_wishlist
  end

  # Send email with wunsches to target
  def send_email
    @target = User.find_by(email_params)
    if @target.present?
      ExampleMailer.send_email(@target, current_user).deliver
      redirect_to root_path, notice: "Email erfolgreich verschickt"
    else
      flash[:alert] = "Kein Benutzer gefunden"
      render :send_wishlist
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wunsch
      @wunsch = Wunsch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wunsch_params
      params.require(:wunsch).permit(:name, :anzahl, :geschenkt, :preis, :link, :beschreibung, :u_id)
    end

    def email_params
      params.require(:send_wishlist).permit(:email)
    end
end
