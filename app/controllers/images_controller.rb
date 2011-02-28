class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to root_url, :notice => 'Image created successfully.'
    else
      render :action => :new
    end
  end

  def show
    @image = Image.find_by_uid params[:id]
  end

end
