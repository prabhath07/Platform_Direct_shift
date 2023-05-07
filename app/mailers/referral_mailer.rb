class ReferralMailer < ActionMailer::Base  
    def send_mail(sending_mail,receiving_mail,referral)
      mail(
        to: receiving_mail,
        from: sending_mail,
        subject: 'You are reffered by the user',
        cc: 
        body: "To accept the referral click here: http://localhost:3000/"
      )
      referral.update!(status: 1)
    end
  end