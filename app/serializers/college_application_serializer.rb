class CollegeApplicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :app_type, :level
  has_many :plans
  
end
