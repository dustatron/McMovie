class Search
  include HTTParty
  base_uri 'api.themoviedb.org'
  format :json

  def self.for titles
    get("/3/search/movie?api_key=749c2902bde6802d4268a80d0011ab0f&language=en-US&query=#{titles}" )
  end
  
  def movie(movieID)
    self.class.get("https://api.themoviedb.org/3/movie/#{movieID}?api_key=749c2902bde6802d4268a80d0011ab0f&append_to_response=videos" )
  end

  

end
