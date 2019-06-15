class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render
  end

end
