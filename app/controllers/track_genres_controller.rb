class TrackGenresController < ApplicationController
  before_action :set_track_genre, only: %i[ show update destroy ]

  # GET /track_genres
  def index
    @track_genres = TrackGenre.all

    render json: @track_genres
  end

  # GET /track_genres/1
  def show
    render json: @track_genre
  end

  # POST /track_genres
  def create
    @track_genre = TrackGenre.new(track_genre_params)

    if @track_genre.save
      render json: @track_genre, status: :created, location: @track_genre
    else
      render json: @track_genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /track_genres/1
  def update
    if @track_genre.update(track_genre_params)
      render json: @track_genre
    else
      render json: @track_genre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /track_genres/1
  def destroy
    @track_genre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_genre
      @track_genre = TrackGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_genre_params
      params.require(:track_genre).permit(:trackid, :genreid)
    end
end
