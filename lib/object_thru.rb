require "object_thru/version"

class Object
  def thru(callable = nil)
    if callable.respond_to?(:call)
      callable.call(self)
    elsif block_given?
      yield self
    end
  end
end
