class SeahorseController < ApplicationController
  def freeze
    render({:template => "page_templates/random_home"})
  end

  def swim_away
    @min = params.fetch("minimum").to_f

    @max = params.fetch("maximum").to_f
  
    @rand_number = rand(@min..@max)
  
    @results = {"Minimum"=>@min, "Maximum"=>@max, "Random Number"=>@rand_number}
  
    @page = "Random"

    render({:template => "page_templates/results"})
  end

end
