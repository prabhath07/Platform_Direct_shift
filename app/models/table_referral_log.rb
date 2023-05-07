class TableReferralLog < ApplicationRecord
    validates :recepient_email_id, presence: true , uniqueness: true
    belongs_to :user
    enum :status , [:in_queue , :email_sent , :referall_accepted , :referral_rejected]
end
