class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def alphabetized
        @customers = Customer.order(:full_name)
    end

end
  

class CustomersController < ApplicationController
    def alphabetized
      @customers = Customer.order(:full_name)
    end
  end
  