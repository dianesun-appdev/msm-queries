class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def table_directors
    render({ :template => "director_templates/table_directors"})
  end

  def youngest_director
    @youngest_director = Director.all.order({:dob => :desc}).where.not({:dob => nil})[0]
    render({:template => "director_templates/youngest"})
  end 

  def oldest_director
    @oldest_director = Director.all.order({:dob => :asc}).where.not({:dob => nil})[0]
    render({:template => "director_templates/oldest"})
  end 

  def director_details
    selected_id = params[:director_id]

    @selected_director = Director.all.where({:id => selected_id })[0]
    @filmography =  Movie.all.where({:director_id => selected_id.to_i})
    render({:template => "director_templates/details_directors"})
  end

  def table_movies
    render({ :template => "movie_templates/table_movies"})
  end

  def movie_details

    selected_id = params[:movie_id]

    @selected_movie = Movie.all.where({:id => selected_id })[0]
    
    render({:template => "movie_templates/movie_details"})
  
  end

  def table_actors
    render({:template => "actor_templates/table_actors"})

  end
  
  
end
