class Api::V1::SyllabusesController < ApplicationController

    def index
        syllabuses = Syllabus.all
        render json: SyllabusSerializer.new(syllabuses)
    end

    def create
        syllabus = Syllabus.new(syllabus_params)
    end

    private

    def syllabus_params
        params.require(:syllabus).permit(:title, :description, :image_url, :category_id)
        if syllabus.save
            render json: syllabus, status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

end
