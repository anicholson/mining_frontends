class Api::BaseController < ActionController::Base
  before_filter :json_only

  def json_only
  	request.format = 'json' unless params[:format]
  end
end