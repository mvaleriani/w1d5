class PolyTreeNode
  #attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    self.parent
  end

  def parent=(node)
    self.parent = node
  end

  def children
    self.children
  end

  def value
    self.value
  end

end
