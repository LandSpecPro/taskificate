class HomeController < ApplicationController
  def tasks
  	@t = Task.all
  	@task = Task.new(:id => 1)
  end

  def add_task
  	@task = Task.new(params[:task])
  	@task.save
  	redirect_to('/')
  end

  def remove_task
  	@t = Task.last!
  	if(@t != nil)
  		@t.delete
  		@t.save
  	end
  	@tasks = Task.all
  	redirect_to('/')
  end

end