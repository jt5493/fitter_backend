class CategorySerializer
  include FastJsonapi::ObjectSerializer
  has_many :workouts
  attributes :name
end
