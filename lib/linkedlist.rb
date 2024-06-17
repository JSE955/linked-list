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

  def size
    0 if head.nil?
    count = 0
    temp = head
    until temp.nil?
      count += 1
      temp = temp.next_node
    end
    count
  end

  def tail
    if head.nil?
      'List is empty'
    else
      tail = head
      tail = tail.next_node until tail.next_node.nil?
      tail
    end
  end
end
