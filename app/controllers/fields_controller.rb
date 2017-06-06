class FieldsController < ApplicationController
  def new
    @field = Field.new
  end

  def index
    @fields = Field.paginate(page: params[:page], :per_page => 5).order('created_at DESC')
    collection = @fields.select("shape")
    gon.collection = []
    collection.each{|item| gon.collection << (item.shape_text)}
  end

  def show
    @field = Field.find(params[:id])
    gon.shape = @field.shape_text
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      flash[:success] = "Shape create successfully!"
      redirect_to @field
    else
      render 'new'
    end
  end

  def edit
    @field = Field.find(params[:id])
  end

  def update
    @field = Field.find(params[:id])
    if @field.update_attributes(field_params)
      flash[:success] = "Shape updated"
      redirect_to @field
    else
      render 'edit'
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    flash[:success] = "Shape has been deleted."
    redirect_to fields_url
  end

  private

  def field_params
    params.require(:field).permit(:name, :shape_text)
  end

end
