class Api::V1::WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        render json: WorkoutSerializer.new(workouts)
    end

    def create
        workout = Workout.new(workout_params)
        if workout.save
            render json: workout, status: :accepted
        else
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end
    end












    private

    def workout_params
        params.require(:workout).permit(
            :title,
            :description,
            :location,
            :category_id
            )
    end

end
