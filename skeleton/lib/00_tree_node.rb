require "byebug"

class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    #debugger
    @value = value
    @parent = nil
    @children = []
  end

  # def parent
  #   self.parent
  # end

  def parent=(node)

    if !node.nil?
      @parent.children.reject! { |child| child == self } unless parent.nil?
      @parent = node
      @parent.children << self unless @parent.children.include?(self)
    else
      @parent = nil
    end

  end

  def add_child(child)
    @children << child
    child.parent = self
  end

  def remove_child(child)
    raise "Not a child!" unless @children.include?(child)
    child.parent = nil

    @children.reject! { |our_child| child == our_child }
  end

end
