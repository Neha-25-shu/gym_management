class ScheduleExercisesController < ApplicationController

  def assign_exercise
    if current_user.admin?
      ContactJob.perform_later
      PostMailer.with(user: current_user).post_created.deliver_later
      @user = User.find_by_id params[:user_id]
      @exercise = Exercise.find_by_id params[:exercise_id]
      @schedule_exercise = ScheduleExercise.create(user_id: @user.id, exercise_id: @exercise.id) if @user.present? && @exercise.present?
    end
  end

end
