class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
end

def alphabetized
    @customers = Customer.order(:full_name)
  end

class CustomersController < ApplicationController
    def alphabetized
      @customers = Customer.order(:full_name)
    end
  end
  