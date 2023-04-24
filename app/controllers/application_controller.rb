class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def table_directors
    render({ :template => "director_templates/table_directors"})
  end

  def director_details
    @selected_director = Director.all.where({:id => params[:director_id]})[0]
    @filmography =  Movie.all.where({:director_id => params[:director_id].to_i})[0]
    render({:template => "director_templates/details_directors"})
  end

  # def youngest_director
  # end 

  # def oldest_director
  # end 

  # def table_actors
  # end
  
  # def table_movies
  # end

  
end
