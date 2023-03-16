require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  # Option 1
  # def list_length

  # end

  def nth_from_end(n)
    n1 = @head
    n2 = @head

    i = 0

    if n < 1 || @head.nil?
      return nil
    end
    
    while i < n - 1
      n1 = n1.next_node
      i += 1
      if n1.nil? 
        return nil
      end
    end

    while n1.next_node
      n1 = n1.next_node
      n2 = n2.next_node
    end

    return n2.value

  end

end
