class ApplicationController < ActionController::API
	include Response
	include ExceptionHandler
	# before_action :authorize_request
	attr_reader :current_user
  def hello
  	render json: 'hey'
  end
	private

  # Check for valid request token and return user
  def authorize_request
  	@current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end


end