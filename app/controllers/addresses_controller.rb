class AddressesController < ApplicationController
  before_filter :set_address_and_supplier, only: [:show, :edit, :update, :destroy]
  before_filter :set_supplier, only: [:new, :create]

  def show
  end

  def new
    @address = Address.new
  end

  def edit
  end

  def create
    @address = Address.new(params[:address])
    if @address.save
      redirect_to supplier_address_path(@supplier, @address), notice: 'Address was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @address.update_attributes(params[:address])
      redirect_to supplier_address_path(@supplier, @address), notice: 'Address was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @address.destroy

    redirect_to supplier_addresses_path(@supplier)
  end
  
  private
  
  def set_address_and_supplier
    @supplier = Supplier.find(params[:supplier_id])
    @address = Address.find(params[:id])
  end

  def set_supplier
    @supplier = Supplier.find(params[:supplier_id])
  end
end
