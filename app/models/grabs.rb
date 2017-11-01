class Grabs

    def initialize title, user
        @title = title
        @user = user
    end
    
    def movie
        movieTrailer = 'KXSJNBGUH_o'
        
        if @title['videos']['results'].present?
            
            movieTrailer = @title['videos']['results'][0]['key']
        end
        
        
        Movie.new({
            title: @title['title'],
            image: "https://image.tmdb.org/t/p/w185/#{@title['poster_path']}",
            backdrop: "https://image.tmdb.org/t/p/w185/#{@title['backdrop_path']}",
            body: @title['overview'],
            trailer: movieTrailer,
            budget: @title['budget'],
            imdb: @title['imdb_id'],
            release_date: @title['release_date'],
            revenue: @title['revenue'],
            runtime: @title['runtime'],
            tagline: @title['tagline'],
            user_id: @user.id,
            user_name: @user.name,
        })

        
    end
    
end
