class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def alphabetized
        @customers = Customer.order(:full_name)
    end

end
  

class CustomersController < ApplicationController
    def show
      @customer = Customer.find(params[:id])
      @customer_params = @customer.attributes
    end
  end
  