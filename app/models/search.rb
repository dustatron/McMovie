class Search
  include HTTParty
  base_uri 'api.themoviedb.org'
  format :json

  def self.for title
    get("/3/search/movie?api_key=749c2902bde6802d4268a80d0011ab0f&language=en-US&query=#{title}" )
  end

end
