class Api::V1::PlansController < ApplicationController
    before_action :set_application

    def index
        plans = @college_application.plans
        render json: plans
    end

    def show
        plan = Plan.find(params[:id])
        render json: plan
    end

    def create
        plan = @college_application.plans.new(plan_params)
        if plan.save
            render json: plan, status: 200
        else
            render json: {errors: plan.errors.full_messages}, status: 404
        end
    end
    
    def destroy
        plan = Plan.find(params[:id])
        plan.destroy
    end

    private

    def plan_params
        params.require(:plan).permit(:college_name, :app_deadline, :app_fee, :visit_date, :visit_impressions, :essay_topic, :rating, :college_application_id)
    end

    def set_application
        @college_application = CollegeApplication.find(params[:college_application_id])
    end
end
