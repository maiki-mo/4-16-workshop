class Stack
    def initialize(items)
      @items = items
    end
    
    def push(element)
      @items.push(element)
    end
    
    def pop()
      @items.pop
    end
    
    def peep()
      @items[-1]
    end
    
    def empty?
    if @items[0] .nil?
      puts "Array is empty"
    else
      puts "Not empty: #{@items}"
    end
    end
    
    def show
      puts "The contents are #{@items.reverse}"
    end
  end
  
  whatever = %w{ words inside of an array }
  
  array = Stack.new(whatever)
  
  p array.push("oranges").push("apples")

  array.show
  
  # array.empty?
  
  # array.push("apples")