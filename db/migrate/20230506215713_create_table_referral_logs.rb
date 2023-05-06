class CreateTableReferralLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :table_referral_logs do |t|
      t.string :recepient_email_id 
      t.integer :status , default: 0 
      t.timestamps
    end
  end
end
