class Grab < ActiveRecord::Base
    include HTTParty
    base_uri 'api.themoviedb.org'
    format :json
    
    def movieDetails movieID
        @details = get("https://api.themoviedb.org/3/movie/#{movieID}?api_key=749c2902bde6802d4268a80d0011ab0f&language=en-US&append_to_response=videos" )
        @details.map do |result|
            Movie.new({
                title: result['original_title'],
                image: "http://image.tmdb.org/t/p/w185/#{result['poster_path']}",
                body: result['tagline'],
                tailer:result['videos']['results'][0]['key'],
            })
        end
        
    end
    
end
