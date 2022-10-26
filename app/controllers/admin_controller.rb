class AdminController < ApplicationController
	before_action :role_change

	def adminview

		
	end

	def home
		redirect_to root_path
	end

	def role_change
		if current_user&.has_role?('seller')
          redirect_to new_product_path
        end
        if current_user&.has_role?('bidder')
          redirect_to new_product_path
        end
    end


end
