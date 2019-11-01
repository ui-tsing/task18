require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "model validation" do
    it "wont save without a priority" do
      task = Task.new
      task.priority = nil
      expect(task.save).to  be false
    end
    it "wont save without a status" do
      task = Task.new
      task.status = nil
      expect(task.save).to be false 
    end
  end

end
