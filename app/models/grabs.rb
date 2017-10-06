class Grabs

    def initialize title
        @title = title
    end
    
    def movie
        Movie.new({
            title: @title['title'],
            image: "http://image.tmdb.org/t/p/w185/#{@title['poster_path']}",
            body: @title['overview'],
            trailer: @title['videos']['results'][0]['key'],
            budget: @title['budget'],
            imdb: @title['imdb_id'],
            release_date: @title['release_date'],
            revenue: @title['revenue'],
            runtime: @title['runtime'],
            tagline: @title['tagline'],
        })

        
    end
    
end
