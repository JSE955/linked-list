require_relative 'lib/linkedlist'

test_list = LinkedList.new
puts test_list.size
test_list.append(100)
test_list.append(200)
test_list.append(300)
puts test_list.size
test_list.prepend(50)
puts test_list.size
