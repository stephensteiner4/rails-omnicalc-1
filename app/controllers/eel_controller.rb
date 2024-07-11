class EelController < ApplicationController
  def freeze
    render({:template => "page_templates/payment_home"})
  end

  def swim_away
    @apr = params.fetch("apr").to_f
    @month_rate = @apr / 100 / 12
  
    @num_years = params.fetch("num_years").to_f
    @num_months = @num_years * 12
  
    @principal = params.fetch("principal").to_f
  
    @numerator = (@month_rate * @principal)
    @denominator = (1 - (1 + @month_rate)**(-1*@num_months))
  
  
    @results = {"APR"=>@apr.to_fs(:percentage, {:precision=>4}), "Number of years"=>@num_years, "Principal"=>@principal.to_fs(:currency)}
    @results["Payment"] =  (@numerator / @denominator).to_f.to_fs(:currency)
  
    @page = "Payment"

    render({:template => "page_templates/results"})
  end
end
