class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  def search
    @accounts = Account.search(params[:name])
    
  end
end
