class WebApplicationsController < ApplicationController
  before_action :set_web_application, only: [:show, :edit, :update, :destroy]

  # GET /web_applications
  # GET /web_applications.json
  def index
    @web_applications = WebApplication.all
  end

  # GET /web_applications/1
  # GET /web_applications/1.json
  def show
  end

  # GET /web_applications/new
  def new
    @web_application = WebApplication.new
  end

  # GET /web_applications/1/edit
  def edit
  end

  # POST /web_applications
  # POST /web_applications.json
  def create
    @web_application = WebApplication.new(web_application_params)

    respond_to do |format|
      if @web_application.save
        format.html { redirect_to @web_application, notice: 'Web application was successfully created.' }
        format.json { render :show, status: :created, location: @web_application }
      else
        format.html { render :new }
        format.json { render json: @web_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_applications/1
  # PATCH/PUT /web_applications/1.json
  def update
    respond_to do |format|
      if @web_application.update(web_application_params)
        format.html { redirect_to @web_application, notice: 'Web application was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_application }
      else
        format.html { render :edit }
        format.json { render json: @web_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_applications/1
  # DELETE /web_applications/1.json
  def destroy
    @web_application.destroy
    respond_to do |format|
      format.html { redirect_to web_applications_url, notice: 'Web application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_application
      @web_application = WebApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_application_params
      params.require(:web_application).permit(:name, :url, :path)
    end
end
