class ExercisesController < ApplicationController
    before_action :set_exercise, only: %i[show edit update destroy]
    def index
      if current_user.admin?
        @exercises = Exercise.all
      else
        @exercises = current_user.exercises.distinct
      end
    end
  
    def show; end
  
    def new
      @exercise = Exercise.new
    end
  
    def create
      @exercise = Exercise.new(exercise_params)
  
      if @exercise.save
        redirect_to @exercise
      else
        render :new
      end
    end
  
    def edit; end
  
    def update
  
      if @exercise.update(exercise_params)
        redirect_to @exercise
      else
        render :edit
      end
    end
  
    def destroy
      @exercise.destroy
  
      redirect_to root_path
    end
  
    private

    def set_exercise
      @exercise = Exercise.find(params[:id])
    end
    
    def exercise_params
      params.require(:exercise).permit(:name, :description, :video, :enabled, :image)
    end
  end
  