class DecisionGroupsController < ApplicationController
  def join
    p params[:user_id]
    p params[:decision_id]
    d = Decision.find params[:decision_id]
    u = User.find params[:user_id]
    d.members << u
    redirect_to decision_path(params[:decision_id])
  end
def index
end

def show
end

end
