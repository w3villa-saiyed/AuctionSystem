class TwilioClient
	attr_reader :client

	# account_sid = 'AC79b5addd7c4b1a4b535c73c7d4cb5e43'
 #    auth_token = '96a302a4a6f4a369ec93312a2295560f'
 #    phone_number = '9795544168'

	def initialize
		@client = Twilio::REST::Client.new account_sid, auth_token 
	end


	def send_text(user, message)
		client.api.account.messages.create(
			to: user.phone,
			from: phone_number,
			body: message
			)
	end



	private

		def account_sid
			Rails.application.credentials.twilio[:account_sid]
		end

		def auth_token
			Rails.application.credentials.twilio[:auth_token]
		end


		def phone_number
			Rails.application.credentials.twilio[:phone_number]
		end

end