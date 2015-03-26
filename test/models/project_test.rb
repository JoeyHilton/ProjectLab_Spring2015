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

  
end
