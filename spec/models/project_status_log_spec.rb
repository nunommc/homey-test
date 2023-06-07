require 'rails_helper'

RSpec.describe ProjectStatusLog, type: :model do
  it "defaults to draft" do
    project = Project.new

    expect do
      project.save
    end.to change(ProjectStatusLog, :count).by(1)

    expect(ProjectStatusLog.last).to have_attributes(
      status: 0
    )
  end

  describe "changing to another status" do
    it "logs the new event" do
      project = Project.create!

      expect do
        project.archived!
      end.to change(ProjectStatusLog, :count).by(1)
    end
  end
end
