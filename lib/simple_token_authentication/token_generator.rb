require 'devise'

module SimpleTokenAuthentication
  class TokenGenerator
    include Singleton

		def generate_token
   		if block_given?
   			yield
   		else
      	Devise.friendly_token()
      end
    end
  end
end
