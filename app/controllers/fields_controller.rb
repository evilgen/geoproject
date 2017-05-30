class FieldsController < ApplicationController
  def new
    @field = Field.new
  end

  def index
    # @fields = Field.all
    @fields = Field.paginate(page: params[:page], :per_page => 20).order('created_at ASC')
  end

  def show
    @field = Field.find(params[:id])
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      # flash[:success] = "Welcome to the Sample App!"
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
      # flash[:success] = "Profile updated"
      redirect_to @field
    else
      render 'edit'
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    # flash[:success] = "User deleted."
    redirect_to fields_url
  end

  private

  def field_params
    params.require(:field).permit(:name, :shape_text)
  end



end
