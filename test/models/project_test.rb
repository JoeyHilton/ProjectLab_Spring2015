require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    @project = projects(:one)
  end
  
  test "name should be present" do
    @project.name = "    "
    assert_not @project.valid?
  end

  test "description should be present" do
    @project.description = "    "
    assert_not @project.valid?
  end

  # def due_date_cannot_be_in_the_past
  #   if due_date.present? && due_date < Date.today
  #     errors.add(:due_date, "can't be in the past")
  #   end
  # end

  test "due_date should be in the future" do
    @project.due_date = Time.now + 2.minutes
    assert @project.valid?
  end
end
