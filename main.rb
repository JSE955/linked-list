require_relative 'lib/linkedlist'

test_list = LinkedList.new
test_list.append(100)
test_list.append(200)
test_list.append(300)

p test_list.pop
p test_list.tail
p test_list.pop
p test_list.tail
p test_list.pop
p test_list.tail
p test_list.pop
p test_list.tail


