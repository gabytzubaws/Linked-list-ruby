class Node
  attr_accessor :value, :next_node;
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

class LinkedList
  attr_accessor :size, :head, :tail
  def initialize(head = nil, tail = nil, size = 0)
    @head = nil
    @tail = nil
    @size = 0
  end
  def append(value)
    new_node = Node.New(value)
    @size += 1
    @head ? @tail.next_node = new_node : @head = new_node
    @tail = new_node
  end
  def prepend(value)
    new_node = Node.new(value)
    @size += 1
    @head ? @head = new_node : @tail = new_node
  end
  def at(index)
    tmp = @head
    index.times do
      tmp = tmp.next_node
    end
    tmp
  end
  def pop
    curr = @head
    prev = nil
    while curr.next_node
      prev = curr
      curr = curr.next_node
    end
    @tail = prev
    @tail.next_node = nil
    @size -= 1
    current_node.value
  end
  def contains(value)
    curr = @head
    if(curr.value == value)
      return true
    end
    while curr.next_node
      curr = curr.next_node
      if(curr.value == value)
        return true
      end
    end
    false
  end
  def find(value)
    curr = @head
    index = 0
    if(curr.value == value)
      return index
    end
    while(curr.next_node)
      curr = curr.next_node
      index += 1
      if(curr.value == value)
        return index
      end
    end
    nil
  end
  def insert_at(value, index)
    to_insert = Node.new(value)
    curr = @head
    curr_index = 0
    while(cur.next_node && curr_index < index - 1)
      curr = curr.next_node
      curr_index += 1
    end
    tmp = cur.next_node
    cur.next_node = to_insert
    to_insert.next_node = tmp
  end
  
end


end

list = LinkedList.new
