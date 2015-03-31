class PathGenerator
  VERSION = "0.0.1"

  def initialize(obj)
    @__object = obj
  end

  def paths
    iter = lambda do |o, path, &block|
      if is_empty?(o); return block.call(path) end
      case o
      when String, Symbol then block.call(path + [o])
      when Hash  then o.each { |k, v| iter.call(v, path + [k], &block) unless is_empty?(k) }
      when Array then o.each { |v| iter.call(v, path, &block) unless is_empty?(v) }
      end
    end
    Enumerator.new do |yielder|
      iter.call(@__object, []) { |path| yielder.yield(path) } unless is_empty?(@__object)
    end
  end

  private
  def is_empty?(obj)
    [[], {}, "", nil].member?(obj)
  end
end
