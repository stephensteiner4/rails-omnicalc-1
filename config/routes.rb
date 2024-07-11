Rails.application.routes.draw do
  get("/", {:controller=>"squid", :action=> "freeze"})

  get("/square/new", {:controller=>"squid", :action=> "freeze"})
  get("/square/results", {:controller=>"squid", :action=> "swim_away"})

  get("/square_root/new", {:controller=>"dogfish", :action=> "freeze"})
  get("/square_root/results", {:controller=>"dogfish", :action=> "swim_away"})

  get("/payment/new", {:controller=>"eel", :action=> "freeze"})
  get("/payment/results", {:controller=>"eel", :action=> "swim_away"})

  get("/random/new", {:controller=>"seahorse", :action=> "freeze"})
  get("/random/results", {:controller=>"seahorse", :action=> "swim_away"})
end
