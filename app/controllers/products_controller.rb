class ProductsController < ApplicationController

def index
  @tacos = Taco.all
  if params[:sort_asc]
    @tacos = Taco.order(params[:sort_asc]) #:asc is default? confirm with Jay
  elsif params[:sort_desc]
    @tacos = Taco.order(params[:sort_desc] => :desc)
  elsif params[:sort_discount]
    @tacos = Taco.where("price < ?", 5)
  end
  if params[:category]
    @tacos = Category.find_by(name: params[:category]).tacos
  end

end

def show
   @tacos = Taco.all
  if params[:id] == "random"
    taco = Taco.all
    @taco = taco.sample
  else
    @taco = Taco.find_by(id: params[:id])
  end
end

def new
end
def create
  @taco = Taco.create(id: params[:id],name: params[:name],price: params[:price], description: params[:description],rating: params[:rating])
  Image.create(taco_id: @taco.id, image_url: params[:image_1]) if params[:image_1] != ""
  Image.create(taco_id: @taco.id, image_url: params[:image_2]) if params[:image_2] != ""

  flash[:success] = "Taco made!"
  redirect_to "/tacos/#{@taco.id}"
end

def edit
  @taco = Taco.find_by(id: params[:id])
end

def update
  @taco = Taco.find_by(id: params[:id])
  @taco.update(id: params[:id],name: params[:name],price: params[:price], description: params[:description],rating: params[:rating])
  Image.create(taco_id: @taco.id, image_url: params[:image_1]) if params[:image_1] != ""
  Image.create(taco_id: @taco.id, image_url: params[:image_2]) if params[:image_2] != ""

  flash[:success] = "This taco has been updated!"
  redirect_to "/tacos/#{@taco.id}"
end

def destroy
  @taco = Taco.find_by(id: params[:id])
  @taco.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end

def search #not RESTful - be on the lookout for another way later
  search_term = params[:search]
  @tacos = Taco.where("name LIKE ? OR price LIKE ? OR rating LIKE ? OR image LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
  render :index #use if we ever have an action whose view name is diff than action
end


end
