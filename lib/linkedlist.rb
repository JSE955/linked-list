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

  def at(index)
    if index.zero?
      head
    else
      count = 1
      temp = head.next_node
      until temp.nil?
        if count == index
          return temp
        else
          count += 1
          temp = temp.next_node
        end
      end
    end
  end

  def pop
    if head.nil?
      return nil
    elsif head.next_node.nil?
      temp = head
      self.head = nil
      return temp
    else
      temp = head
      temp = temp.next_node until temp.next_node.next_node.nil?
      popped_node = temp.next_node
      temp.next_node = nil
      return popped_node
    end
    


  end
end
