class CustomersController < ApplicationControllerdef index
    @customers = Customer.all
  end
end
