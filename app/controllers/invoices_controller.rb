class InvoicesController < ApplicationController

  def index
    # obtener los dtes con items para la empresa con :rut
    @company = Company.where(rut: params[:rut]).first
    @invoices = @company.invoices.order(date: :desc)
    render
  end

end
