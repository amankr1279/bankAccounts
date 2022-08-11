class AdminController < ApplicationController
  def index
  end

  def accounts
    @accnts = Account.all
  end

  def users
    @users = User.all
  end

  def show_account
    @accnt = Account.find(params[:id])
  end
  def show_user
    @user = User.find(params[:id])
  end
end
