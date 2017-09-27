class SearchController < ApplicationController
  def index
    @search_title = 'batman'
    @searches = Search.for(@search_title)
  end
end
