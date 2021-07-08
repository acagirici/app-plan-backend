app = CollegeApplication.create(
    name: 'Undergraduate Application',
    app_type: 'First-Year',
    level: 'Undergraduate'
)

plan = Plan.create(
    college_application_id: 1,
    college_name: 'Rutgers University',
    app_deadline: '10/10/2021',
    app_fee: 50,
    visit_date: '09/10/2021',
    visit_impressions: 'Greate Experience',
    essay_topic: 'Why us?',
    rating: 10
)

plan2 = Plan.create(
    college_application_id: 1,
    college_name: 'Stevens Institute of Technology',
    app_deadline: DateTime.new(2021, 9, 11),
    app_fee: 50,
    visit_date: DateTime.new(2021, 6, 11),
    visit_impressions: 'Greate Experience',
    essay_topic: 'Why us?',
    rating: 10
)