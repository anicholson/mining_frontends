class Api::WorldController < Api::BaseController
  respond_to :json

  def show
  	id = params[:id] || MiningDepot::Universe::DEFAULT
  	@world = MiningDepot::Universe[id]
  end
end
