class CustomersController < ApplicationController


    def alphabetized
        @customers = Customer.order(:full_name)
    end

end
  

  