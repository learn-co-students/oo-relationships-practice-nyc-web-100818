class Show < Media

  def self.all
    Media.all.select{|media| media.is_a?(Show)}
  end

  # def self.on_the_big_screen
  #   # get movie names
  #   movie_titles = Movie.all.map{|movie| movie.title}
  #   self.all.select{|show| movie_titles.include?(show.title) }
  # end

  # should return TV shows that share the same name as a movie
  # should this be an class method?
  def on_the_big_screen
    movie_titles = Movie.all.map{|movie| movie.title}
    movie_titles.include?(self.title) ? self : nil
  end

end
