require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    @project = projects(:one)
  end
  
  test "name should be present" do
    @project.name = "    "
    assert @project.valid?
  end

  test "description should be present" do
    @project.description = "    "
    assert @project.valid?
  end

  def due_date_cannot_be_in_the_past
    if due_date.present? && due_date < Date.today
      errors.add(:due_date, "can't be in the past")
    end
  end
end
