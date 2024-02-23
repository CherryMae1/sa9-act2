require 'prob2'

RSpec.describe TodoList do
  let(:todo) {TodoList.new}
  describe "#add" do
    it "adds a todo to the list" do
      todo.add("Go to gym")
      expect(todo.todos).to include("Go to gym")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo.remove("Go to gym")
      expect(todo.todos).not_to include("Go to gym")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo.add("Go to gym")
      todo.add("Take a nap")
      expect(todo.todos).to eq(["Go to gym", "Take a nap"])
    end
  end
end
