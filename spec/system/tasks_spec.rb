require 'rails_helper'

RSpec.describe "Tasks", type: :system do
  before do
    driven_by(:rack_test)
  end

  # pending "add some scenarios (or delete) #{__FILE__}"
  describe "index page(root page)" do
    it "will show hello at root path" do
      visit "/"
      expect(page).to  have_text('Hello')
    end
    it "will show all tasks" do
      task = Task.new
      task.id = 1
      task.name = "Buy something"
      task.save
      visit "/"
      expect(page).to have_text('Buy something')
    end
    it "will able to add a new task" do
      visit "/"
      fill_in "Task name",	with: "Buy an apple" 
      click_on "Create task"
      expect(@tasks.find_by(name: 'Buy an apple')).to be_true  
    end
  end
end
