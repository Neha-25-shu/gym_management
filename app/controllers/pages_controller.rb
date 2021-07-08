class PagesController < ApplicationController
  def home
    @users = User.all
    @exercises = Exercise.all
    @schedule_exercise = ScheduleExercise.all
  end
end
