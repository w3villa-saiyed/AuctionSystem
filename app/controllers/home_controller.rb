class HomeController < ApplicationController
  # before_action :role_change
  

  def index
    @categories = Category.all
      category = params[:category]
    if !category.nil?
      @products = Product.where(:category_id => category)
    else
   @products = Product.all.reverse()
  end
    
    
  end


  def bidder

  end

  def seller

  end



  #  def role_change
  #   if current_user&.has_role?('admin')
  #     redirect_to root_path
  #   elsif current_user&.has_role?('seller')
  #     # redirect_to '/'
  #   end
  #   if current_user&.has_role?('bidder')
  #     # redirect_to '/'
  #   end
  # end
end
