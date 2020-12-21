class TaskReflex < StimulusReflex::Reflex
  before_reflex :find_task

  def toggle

    Task.find(element.dataset.id).update(completed_at: element.checked ? Time.current : nil)

  end

  def destroy

    Task.find(element.dataset.id).destroy

  end

  def reorder(position)
    @task.insert_at(position)
  end

  private

  def find_task

   @task =  Task.find(element.dataset.id)

  end

end


