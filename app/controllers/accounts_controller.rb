class AccountsController < ApplicationController
    def new
        redirect_to root_path unless current_user.account.nil?

        @account = Account.new
    end

    def create
        @account = Account.new(account_params)
        if @account.save
            current_user.account = @account
            current_user.add_role :admin, @account
            current_user.save
            redirect_to root_path, success: "Account created!"
        else 
            render :new
        end
    end

    private
    def account_params
        params.require(:account).permit(:name, :address, :city, :province, :zip, :country)
    end
end