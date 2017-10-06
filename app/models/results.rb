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
        body: result['overview'],
        id: result['id'],
      })
    end
  end
end

