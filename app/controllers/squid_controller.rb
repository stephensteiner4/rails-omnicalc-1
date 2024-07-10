
class SquidController < ApplicationController
  def freeze
    
  end


  def swim_away
    @number = params.fetch("number").to_f

    @sq_number = (@number ** 2).to_f
  
    @page = "Square"
  
    @results = {"Number"=>@number, "Square"=>@sq_number}
  
    render({:template => "square_action"})
  end
end
