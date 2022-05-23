class TrackElementsController < ApplicationController
  before_action :set_track_element, only: %i[ show update destroy ]

  # GET /track_elements
  def index
    @track_elements = TrackElement.all

    render json: @track_elements
  end

  # GET /track_elements/1
  def show
    render json: @track_element
  end

  # POST /track_elements
  def create
    @track_element = TrackElement.new(track_element_params)

    if @track_element.save
      render json: @track_element, status: :created, location: @track_element
    else
      render json: @track_element.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /track_elements/1
  def update
    if @track_element.update(track_element_params)
      render json: @track_element
    else
      render json: @track_element.errors, status: :unprocessable_entity
    end
  end

  # DELETE /track_elements/1
  def destroy
    @track_element.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_element
      @track_element = TrackElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_element_params
      params.require(:track_element).permit(:trackid, :elementid)
    end
end
