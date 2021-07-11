class Api::V1::CollegeApplicationsController < ApplicationController

    def index
        college_applications = CollegeApplication.all
        render json: college_applications
    end

    def create
        college_application = CollegeApplication.new(college_application_params)
        if college_application.save
            render json: college_application, status: 200
        else
            render json: {errors: college_application.errors.full_messages}, status: 404
        end
    end

    def show
        college_application = CollegeApplication.find(params[:id])
        render json: college_application
    end

    def destroy
        college_application = CollegeApplication.find(params[:id])
        college_application.destroy
    end

    private

    def college_application_params
        params.require(:college_application).permit(:name, :app_type, :level)
    end

end
