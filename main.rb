require_relative 'lib/linkedlist'

test_list = LinkedList.new
p test_list.tail
test_list.append(100)
test_list.append(200)
p test_list.tail
test_list.append(300)
p test_list.tail
test_list.prepend(50)

