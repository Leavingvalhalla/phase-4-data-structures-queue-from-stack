require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        @s1.push(value)
    end

    def move_right
        until @s1.empty? do
            value = @s1.pop
            @s2.push(value)
        end
    end

    def move_left
        until @s2.empty? do
            value = @s2.pop
            @s1.push(value)
        end
    end

    def remove
        self.move_right
        value = @s2.pop
        self.move_left
        value
    end

    def peek
        self.move_right
        value = @s2.peek
        self.move_left
        value
    end

end

x = MyQueue.new

x.add(1)
x.add(2)
x.add(3)
puts x.peek