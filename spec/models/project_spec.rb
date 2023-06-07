require "rails_helper"

RSpec.describe Project, type: :model do
  describe "#status" do
    it "defaults to draft" do
      project = Project.new

      project.save
      project.reload

      expect(project.status).to eq("draft")
    end
  end
end
