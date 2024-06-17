require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new
    new_node.value = value
    if head.nil?
      temp = new_node
      temp.next_node = nil
      self.head = temp
    else
      temp = head
      temp = temp.next_node until temp.next_node.nil?
      new_node.next_node = nil
      temp.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = head
    self.head = new_node
  end
end
