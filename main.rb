require_relative 'lib/linkedlist'

test_list = LinkedList.new
test_list.append(100)
test_list.append(200)
test_list.append(300)

p test_list.find(100)
p test_list.find(200)
p test_list.find(300)
p test_list.find(400)
p test_list.find('putty')


