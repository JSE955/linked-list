require_relative 'lib/linkedlist'

test_list = LinkedList.new
test_list.append(100)
test_list.append(200)
test_list.append(300)

p test_list.contains?(100)
p test_list.contains?(200)
p test_list.contains?(300)
p test_list.contains?(400)
p test_list.contains?('putty')


