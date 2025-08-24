Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
   get("/", { :controller => "calculator", :action => "square" })
   
   get("/square/new", { :controller => "calculator", :action => "square" })
   get("/square/results", { :controller => "calculator", :action => "square_results" })

   get("/square_root/new", { :controller => "calculator", :action => "square_root" })
   get("/square_root/results", { :controller => "calculator", :action => "square_root_results" })

   get("/payment/new", { :controller => "calculator", :action => "payment" })
   get("/payment/results", { :controller => "calculator", :action => "payment_results" })

   get("/random/new", { :controller => "calculator", :action => "random" })
   get("/random/results", { :controller => "calculator", :action => "random_results" })

end
