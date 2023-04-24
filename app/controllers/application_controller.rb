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

  #def oldest_director
  #end 

  def director_details
    selected_id = 1
    selected_id = params[:director_id]

    @selected_director = Director.all.where({:id => selected_id })[0]
    @filmography =  Movie.all.where({:director_id => selected_id.to_i})
    render({:template => "director_templates/details_directors"})
  end

  # def table_actors
  # end
  
  # def table_movies
  # end

  
end
