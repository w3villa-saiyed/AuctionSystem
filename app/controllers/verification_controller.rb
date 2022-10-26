class VerificationController < ApplicationController
  def index
  end



  def create
    @otp = 4.times.map{rand(4)}.join
    cookies[:otp] = @otp
    TwilioClient.new.send_text(User.last, @otp)
    render 'verification/optverfied'
  end

  def match

    @user = User.find_by(phone: params[:phone])
    if @user.present?
      user_otp = params[:otp]
      send_otp =cookies[:otp] 
      cookies[:otp] = ""
      if(user_otp == send_otp)
        sign_in(@user)
        redirect_to root_path
      else
        redirect_to verification_index_path
      end
    else


    end
  end

end
