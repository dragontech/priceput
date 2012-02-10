class SuppliersController < ApplicationController
  before_filter :set_supplier, only: [:show, :edit, :update] 
  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update     
    if @supplier.update_attributes(params[:supplier])
      redirect_to @supplier, notice: 'Supplier was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
  end
  
  private
  
  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
  
end
