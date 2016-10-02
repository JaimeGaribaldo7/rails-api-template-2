class DraftingsController < ApplicationController
  before_action :set_drafting, only: [:show, :update, :destroy]

  # GET /draftings
  # GET /draftings.json
  def index
    @draftings = Drafting.all

    render json: @draftings
  end

  # GET /draftings/1
  # GET /draftings/1.json
  def show
    render json: @drafting
  end

  # POST /draftings
  # POST /draftings.json
  def create
    @drafting = Drafting.new(drafting_params)

    if @drafting.save
      render json: @drafting, status: :created, location: @drafting
    else
      render json: @drafting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /draftings/1
  # PATCH/PUT /draftings/1.json
  def update
    @drafting = Drafting.find(params[:id])

    if @drafting.update(drafting_params)
      head :no_content
    else
      render json: @drafting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /draftings/1
  # DELETE /draftings/1.json
  def destroy
    @drafting.destroy

    head :no_content
  end

  private

  def set_drafting
    @drafting = Drafting.find(params[:id])
  end

  def drafting_params
    params.require(:drafting).permit(:nickname, :team_id, :pokemon_id)
  end
end
