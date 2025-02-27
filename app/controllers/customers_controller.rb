class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order('full_name ASC')
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end
end
