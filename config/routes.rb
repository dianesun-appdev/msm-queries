Rails.application.routes.draw do
  
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "application", :action => "table_directors" })  
  get("/directors/youngest", { :controller => "application", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "application", :action => "oldest_director" })
  get("/directors/:director_id", { :controller => "application", :action => "director_details" })

  get("/actors", { :controller => "application", :action => "table_actors"})
  get("/actors/:actor_id", { :controller => "application", :action => "actor_details" })

  get("/movies", { :controller => "application", :action => "table_movies" })
  get("/movies/:movie_id", { :controller => "application", :action => "movie_details" })
  

end
