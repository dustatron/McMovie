class Details
  include HTTParty
  base_uri 'api.themoviedb.org'
  format :json

  def self.for id
      get("/3/movie/#{id}?api_key=749c2902bde6802d4268a80d0011ab0f&language=en-US&append_to_response=videos" )
  end

end
