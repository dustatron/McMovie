class Results
  def initialize searches
    @searches = searches
  end

  def any?
    @searches['results'] != nil
  end

  def count
    @searches['total_results']
  end

  def movies
    @searches['results'].map do |result|
      Movie.new({
        title: result['title'],
        image: "http://image.tmdb.org/t/p/w185/#{result['poster_path']}",
        body: "
          <p>#{result['overview']}</p>
          <p>Released : #{result['release_date']}</p>
        ",
      })
    end
  end
end

