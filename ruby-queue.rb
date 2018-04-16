class Queue
    def initialize(item)
        @item = item
    end

    def enqueue(element)
        @item.push(element)
    end

    def dequeue
        @item.shift
    end

    def front
        @item[0]
    end

    def empty?
        if @item[0].nil?
            puts "There is nothing in here"
        else
            puts "Here is what is inside: #{@item}"
        end
    end

    def show
        puts @item.join(" ")
    end
end

whatever = %w{ words inside of an array }
  
array = Queue.new(whatever)

# p array.enqueue("new-word")
# p array.dequeue
# p array.front
# array.empty?
array.show