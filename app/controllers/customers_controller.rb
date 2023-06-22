class CustomersController < ApplicationController
    # Controller actions and methods
    def index
        @customers = Customer.all
    end
  end
  