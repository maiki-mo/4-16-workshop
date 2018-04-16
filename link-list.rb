class Node
    attr_accessor :val, :next
  
    def initialize(val, next_node)
        @val = val
        @next = next_node
    end
  end

class LinkedList

    def initialize(val)
      @head = Node.new(val, nil)
    end
  
    def add(val)
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = Node.new(val, nil)
    end
  
    def delete(val)
      current.next = @head
      if current.val = val
        @head = current.next
      else
        while (current.next != nil) && (current.next.val != val)
          current = current.next
        end
        unless current.next == nil
          current.next = current.next.next
        end
      end
    end
  
    def return_list
      elements = []
      current = @head
      while current.next != nil
        elements << current
        current = current.next
      end
      elements << current
    end
end

new_ll = LinkedList.new(10)

new_ll.add(20)
new_ll.add(30)
p new_ll





# class node
#     attr_accessor :data, :next
#     def initialize data
#         @data = data
#         @next = nil
#     end
# end

# class Solution
#     def insert(head,value)
#         _node = Node.new(value)
#     end

#     if head .nil?
#         return head
#     end

#     current_node = head
#     until current_node.next.nil?
#         current_node = current_node.next
#     end

#     current_node.next = _node
#     end

#     def display(head)
#         current = head
#         while current 
#         print current.data, " "
#         current = current.next
#         end
#     end   
# end

# my_list = Solution.new
# head = nil
# T = gets.to_i
# for i in 1..T
#     data = gets.to_i
#     head = my_list.insert(head, data)
# end
# my_list.display(head)