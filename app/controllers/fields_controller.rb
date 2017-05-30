class FieldsController < ApplicationController
  def new
  end

  def index
    @fields = Field.all
  end

  def show
    @field = Field.find(params[:id])
    # @geojson =
  end

  def create
  end

  def edit
    @field = Field.find(params[:id])
  end

  def update
  end
end
