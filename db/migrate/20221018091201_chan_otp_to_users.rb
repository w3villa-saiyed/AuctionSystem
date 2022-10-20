class ChanOtpToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :otp, :string
  end
end
