class AddUserReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :table_referral_logs , :user , index: true
  end
end
