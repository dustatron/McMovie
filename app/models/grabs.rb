class Grabs

    def initialize title
        @title = title
    end
    
    def movie
        Movie.new({
            title: @title['title'],
            image: "http://image.tmdb.org/t/p/w185/#{@title['poster_path']}",
            body: @title['tagline'],
            trailer: @title['videos']['results'][0]['key'],
        })

        
    end
    
end
