Actor.destroy_all
Character.destroy_all
Show.destroy_all
Network.destroy_all

# create Actor
20.times do
  Actor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end

# create Character
20.times do
  Character.create(
    name: Faker::DcComics.heroine,
    actor_id: Actor.all.sample.id,
    show: Show.all.sample,
    catchphrase: Faker::TvShows::BrooklynNineNine.quote,
  )
end

# create Show
day = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
genre = [
  'Sci-fi',
  'Drama',
  'Comedy',
  'Horror',
  'Kids',
  'Romance',
  'True Crime',
  'Historical',
]

20.times do
  Show.create(
    name:
      Faker::Verb.ing_form.capitalize + ' ' +
        Faker::Hipster.words[0].capitalize,
    day: day.sample,
    season: Faker::Number.between(from: 1, to: 10),
    genre: genre.sample,
    network: Network.all.sample,
  )
end

# create Network
letters = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
10.times do
  Network.create(
    call_letters: letters.sample + letters.sample + letters.sample,
    channel: Faker::Number.between(from: 1, to: 100),
  )
end
