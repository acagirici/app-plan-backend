class PlanSerializer < ActiveModel::Serializer
  attributes :id, :college_name, :app_deadline, :app_fee, :visit_date, :visit_impressions, :essay_topic, :rating, :college_application_id
end
