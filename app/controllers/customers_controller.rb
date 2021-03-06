class CustomersController < ApplicationController
    
    def index
        @customers = Customer.all
    end
    
    def new
        @customer = Customer.new
    end
    
    def show
        @customer = Customer.find params[:id]
    end
    
    def edit
        @customer = Customer.find params[:id]
    end
    
    def create
        @customer = Customer.new(customer_params)
            if @customer.save
                redirect_to customer_path(@customer) , notice: 'メッセージを保存しました'
             else
                @customers = Customer.all
                flash.now[:alert] = "メッセージの保存に失敗しました。"
                render :new
            end
        
    end
    
    def update
        @customer = Customer.find params[:id]
        if @customer.update(customer_params)
            redirect_to @customer
        else
            render 'edit'
        end
    end
    def destroy
        @customer = Customer.find params[:id]
        @customer.destroy
        redirect_to customers_path, notice: '削除しました。'
    end
    
    private
    
    def customer_params
        params.require(:customer).permit(:name, :zip, :address1, :address2)
    end
    
end
