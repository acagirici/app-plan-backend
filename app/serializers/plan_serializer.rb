class PlanSerializer < ActiveModel::Serializer
  attributes :id, :college_name, :app_deadline, :app_fee, :visit_date, :visit_impressions, :essay_topic, :rating, :college_application_id

  def app_deadline
    self.object.app_deadline.strftime("%d %B %Y")
  end

  def visit_date
    self.object.visit_date.strftime("%d %B %Y")
  end

end
