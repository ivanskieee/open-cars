class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :car_id
end
