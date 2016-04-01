FactoryGirl.define do
  factory :car do
    make { Car::MAKES_AND_MODELS.keys.sample }
    model { Car::MAKES_AND_MODELS[make].sample }
    year { rand(30) + 1980 }
    price { sprintf("%.02f", rand(10000.00) + 5000)}
  end
end
