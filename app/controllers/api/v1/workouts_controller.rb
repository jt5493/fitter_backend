class Api::V1::WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        # render json: WorkoutSerializer.new(workouts)
        options = {
            include: [:category]
        }

        render json: WorkoutSerializer.new(workouts, options)
    end

    def create
        workout = Workout.new(workout_params)
        options = {
            include: [:category]
        }
        if workout.save
            render json: WorkoutSerializer.new(workout, options), status: :accepted
        else
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        workout = Workout.find(params[:id])
        workout.update(workout_params)
        if workout.save
            render json: WorkoutSerializer.new(workout), status: :accepted
        else
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end

    end

    def ping
        
    end








    private

    def workout_params
        params.permit(
            :id,
            :category,
            :title,
            :description,
            :location,
            
            :category_id
            
            )
    end

end
