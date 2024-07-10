class DogfishController < ApplicationController
  def freeze

    render({:template => "page_templates/sqrt_home"})

  end 
  
  def swim_away

    @number = params.fetch("number").to_f

    @sqrt_number = (@number ** (0.5)).to_f

    @page = "Square Root"

    @results = {"Number"=>@number, "Square Root"=>@sqrt_number}

    render({:template => "page_templates/results"})
  end

end
