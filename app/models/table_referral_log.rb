class TableReferralLog < ApplicationRecord
    validates :recepient_email_id, presence: true , uniqueness: true
    belongs_to :user
end
