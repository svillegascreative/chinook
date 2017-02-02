### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".
Genre.find_by(name: "Hip Hop/Rap")
# => #<Genre id: 17, name: "Hip Hop/Rap", created_at: "2013-01-20 02:04:31", updated_at: "2014-01-29 22:14:08">

# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre
Track.where(genre_id: 17).count
# => 35

# 2) Find the total amount of time required to listen to all the tracks in the database.
Track.sum(:milliseconds)
# => 1378575827

# 3a) Find the highest price of any track that has the media type "MPEG audio file".
MediaType.where(name: "MPEG audio file")
# => MediaType id: 1, name: "MPEG audio file"
Track.where(media_type_id: 1).maximum(:unit_price).to_f
# => 0.99


# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".
Track.select(:name).where(media_type_id:1).order(unit_price: :desc).first
# => => #<Track id: nil, name: "Put The Finger On You">


# 4) Find the 2 oldest artists.
Artist.order(:created_at).limit(2)
# => [#<Artist id: 258, name: "Les Arts Florissants & William Christie", created_at: "2004-02-13 06:08:36", updated_at: "2014-01-29 22:10:22">, #<Artist id: 31, name: "Baby Consuelo", created_at: "2004-02-16 22:04:39", updated_at: "2014-01-29 22:10:22">]

### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
Album.all.where('title LIKE ?', 'B%')
