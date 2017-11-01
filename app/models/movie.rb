class Movie < ActiveRecord::Base
    validates_length_of :title, maximum: 50
    validates_length_of :trailer, maximum: 25
    validates_length_of :tagline, maximum: 50
    validates_length_of :body, maximum: 500
    acts_as_votable
    has_many :comments, dependent: :destroy
end
