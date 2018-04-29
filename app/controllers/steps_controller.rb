class StepsController < ApplicationController
    def create
        @exercise = Exercise.find(params[:exercise_id])
        @step = @exercise.steps.create(step_params)
        redirect_to exercise_path(@exercise)
    end
    def destroy
        @exercise = Exercise.find(params[:exercise_id])
        @step = @exercise.steps.find(params[:id])
        @step.destroy
        redirect_to exercise_path(@exercise)
    end

    private 
        def step_params
            params.require(:step).permit(:reps, :weight, :notes)
        end
    
    
end
