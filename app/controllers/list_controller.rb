class ListController < ApplicationController
  def index
    @list = List.all
    @new_task ||= Task.new
  end
end
