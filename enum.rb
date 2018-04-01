# my enumerables

module Enumerable
  def my_each    
    if self.class == Hash      
      for k in self.keys
        val = self[k]
        yield(k, val)
      end
    else 
      for i in self
        yield i
      end 
    end 
  end #end method

  def my_each_with_index
    i = 0
    for a in self
      yield(a, i)
      i = i+1
    end #end for
  end #end method

  def my_select
    if self.class == Array
      ss = []
    end
    if self.class == Hash
      ss = {}
    end
    self.my_each do |e|
      ss.push(e) if yield(e)
    end
    ss
  end #end method

  def my_all?
    a = true
    self.my_each do |e|
      if yield(e) == false
        a = false
      end
    end 
    a
  end

  def my_any?
    a = false
    self.my_each do |e|
      if yield(e) == true
        a = true
      end
    end 
    a
  end

  def my_none?
    a = true
    self.my_each do |e|
      if yield(e) == true
        a = false
      end
    end 
    a
  end

  def my_count
    c = 0
    self.my_each do |e|
      if block_given?
        c = c+1 if yield(e) == true        
      else
        c=c+1
      end #end if
    end  #end do
    c
  end #end def

  def my_map()
    mapping = []
    if block_given?
      self.my_each do |e|
        mapping.push(yield(e))
      end
    else
      self.my_each do |e|
        mapping.push(proc.call(e))
      end
    end      
  mapping
  end

  def my_inject(store=self[])  
    store ||= []    
    self.my_each do |e|
      store = yield(store, e) 
    end
    store 
  end


end #end module enumerable

# testing my)my_inject
def multiply_els(ray)
   ray.my_inject(1) {|prod, n| prod * n }    
end

p multiply_els([2,4,5])

