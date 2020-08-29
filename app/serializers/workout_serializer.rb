class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :location, :category_id, :category
  # belongs_to :category
end
