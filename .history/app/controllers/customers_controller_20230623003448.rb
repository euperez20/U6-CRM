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

    def missing_email
        @customers = Customer.where(email: nil)
    end

    def missing_email
        @customers = Customer.where(email: nil).order(full_name: :asc)
    end

end

  