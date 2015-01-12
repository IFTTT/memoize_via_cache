require "memoize_via_cache/version"

module MemoizeViaCache
  def memoize_via_cache(method, options)
    define_method(:"#{method}_with_cache") do |*args|
      klass = (self.class.name == 'Class') ? self.name : self.class.name
      key_items = ["memoize", klass.underscore.gsub('/', ':'), method.to_s]
      key_items << args.first if !args.first.blank?
      key_items << args.last if method == :tables and !args.last.blank? # quirk of Rails
      key = key_items.join(':')
      Rails.cache.fetch(key, options) { __send__(:"#{method}_without_cache", *args) }
    end
    alias_method_chain method, :cache
  end
end
