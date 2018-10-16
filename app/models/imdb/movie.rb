class Movie < Media

  def self.all
    Media.all.select{|media| media.is_a?(Movie)}
  end

end
