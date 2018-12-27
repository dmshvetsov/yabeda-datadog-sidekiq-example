class HomeController < ApplicationController
  def index
  end

  def enqueue
    job_randomizer = Array.new(rand(1000)) { rand(6) }
    job_randomizer.each do |n|
      case n
      when 0
        DangerJob.perform_later
      when 1
        EmptyJob.perform_later
      when 2
        EmptyJob.set(wait: 10.seconds).perform_later
      when 3
        WaitingJob.perform_later
      when 4
        WaitingJob.set(wait: 5.seconds).perform_later
      end
    end

    flash[:notice] = "Enqueued #{job_randomizer.size} jobs"
    redirect_to root_path
  end
end
