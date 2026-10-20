more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'The Avengers', :rating => '8',
    :release_date => '11-Apr-2012'},
  {:title => 'Avengers: Infinity War', :rating => '9',
    :release_date => '23-Apr-2018'},
  {:title => 'Avengers: Age of Ultron', :rating => '7',
    :release_date => '13-Apr-2015'},
  {:title => 'Avengers: End Game', :rating => '10',
    :release_date => '26-Apr-2019'}
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) { |m| m.assign_attributes(movie) }
end
