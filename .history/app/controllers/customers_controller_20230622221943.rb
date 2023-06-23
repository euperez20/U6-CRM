class CustomersController < ApplicationController
    def index
        @customers = Customer.order(:full_name)
    end

    def alphabetized
        @customers = Customer.order(:full_name)
    end

    def show
        @customer = Customer.find(params[:id])
        @customer_params = @customer.attributes
    end

end
 