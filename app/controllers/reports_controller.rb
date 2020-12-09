class ReportsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :user_authenticated?

  def handle
    render json: {message: "testing"}
    # if authenitcated, then parse the CSV
    # for each row:
    # find the lock with the given lock ID
      # if it exists:
        # update its state in the lock table
        # add the change to the changes table
      # if it does not exist yet
        # create a new lock
        # do the same as above
      # end
  end

  def user_authenticated?
    code_name = request.headers['X-User-CodeName']
    sent_token = request.headers['X-User-Token']
    user = User.find_by(code_name: code_name)

    unless user && user.auth_token == sent_token
      render json: { message: "wrong access token" }
    end
  end
end
