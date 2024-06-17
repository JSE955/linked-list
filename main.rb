require_relative 'lib/linkedlist'

test_list = LinkedList.new
test_list.append(100)
test_list.append(200)
test_list.append(300)

p test_list.at(0)
p test_list.at(1)
p test_list.at(2)
p test_list.at(3)
p test_list.at(100)

