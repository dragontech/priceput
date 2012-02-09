class SuppliersController < ApplicationController
  def index
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update     
    @supplier = Supplier.find(params[:id])

    if @supplier.update_attributes(params[:supplier])
      redirect_to @supplier, notice: 'Supplier was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
  end
end
