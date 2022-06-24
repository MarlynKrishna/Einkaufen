class ProductsController < ApplicationController
  # GET method to get all products from database   
  def index   
   @items = Item.all   
 end   
   
 # GET method to get a item by id   
 def show   
   @item = Item.find(params[:id])   
 end   
   
 # GET method for the new item form   
 def new   
   @item = Item.new   
 end   
   
 # POST method for processing form data   
 def create   
   @item = Item.new(item_params)   
   if @item.save   
     flash[:notice] = 'item added!'   
     redirect_to '/product' 
   else   
     flash[:error] = 'Failed to edit item!'   
     render :new   
   end   
 end   
 
 def destroy   
   @item = Item.find(params[:id])   
   if @item.delete   
     flash[:notice] = 'item deleted!'   
     redirect_to root_path   
   else   
     flash[:error] = 'Failed to delete this item!'   
     render :destroy   
   end   
 end   
 
    
 def item_params   
   params.require(:product).permit(:name, :price, :image_url, :quantity)   
 end   
 
 
      
 end
 