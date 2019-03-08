class ShoplistsController < ApplicationController

  def index
    @shoplists = Shoplist.all
  end 

  def new
    @shoplist = Shoplist.new
  end

  def create
    Shoplist.create(shoplist_params)
    redirect_to root_path
  end

private

def shoplist_params
  params.require(:name).permit(:items, :amount)
end

end