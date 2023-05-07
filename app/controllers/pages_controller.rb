class PagesController < ApplicationController
  def home
    @referrals = current_user.table_referral_logs if current_user
  end
end
