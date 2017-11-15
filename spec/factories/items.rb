FactoryBot.define do
  factory :item do
    title { Faker::StarWars.character }
    done false
    todo_id nil
  end
end