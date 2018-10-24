require 'faker'

rng = Random.new

10.times do
    user = User.create!(first_name: Faker::Creature::Cat.name, last_name: Faker::StarTrek.specie, email: Faker::Creature::Cat.breed)
end

5.times do
    categorie =  Categorie.create!(name: Faker::Lovecraft.word)
end

10.times do
    article = Article.create!(title: Faker::TwinPeaks.location, content: Faker::TwinPeaks.quote, user_id: User.all.ids.sample, categorie_id: Categorie.all.ids.sample)
end

15.times do
    commentaire = Commentaire.create!(content: Faker::Friends.quote, user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
end

15.times do
    like = Like.create!(user_id: User.all.ids.sample, article_id: Article.all.ids.sample)
end