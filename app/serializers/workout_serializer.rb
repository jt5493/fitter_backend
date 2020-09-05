class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :category
  attributes :title, :description, :location, :category_id, :category
  
end
